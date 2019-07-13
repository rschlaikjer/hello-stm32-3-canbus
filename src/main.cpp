#ifndef STM32F1
#define STM32F1
#endif

#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/flash.h>

#include <printf.h>

#include <can.hpp>
#include <uart.hpp>

void rcc_clock_setup_in_hse_8mhz_out_64mhz(void);
void init();
void loop();

int main() {
  init();
  while (true) {
    loop();
  }
}

void rcc_clock_setup_in_hse_8mhz_out_64mhz(void)
{
	/* Enable internal high-speed oscillator. */
	rcc_osc_on(RCC_HSI);
	rcc_wait_for_osc_ready(RCC_HSI);

	/* Select HSI as SYSCLK source. */
	rcc_set_sysclk_source(RCC_CFGR_SW_SYSCLKSEL_HSICLK);

	/* Enable external high-speed oscillator 8MHz. */
	rcc_osc_on(RCC_HSE);
	rcc_wait_for_osc_ready(RCC_HSE);
	rcc_set_sysclk_source(RCC_CFGR_SW_SYSCLKSEL_HSECLK);

	/*
	 * Set prescalers for AHB, ADC, ABP1, ABP2.
	 * Do this before touching the PLL (TODO: why?).
	 */
	rcc_set_hpre(RCC_CFGR_HPRE_SYSCLK_NODIV);    /* Set. 64MHz Max. 72MHz */
	rcc_set_adcpre(RCC_CFGR_ADCPRE_PCLK2_DIV8);  /* Set.  8MHz Max. 14MHz */
	rcc_set_ppre1(RCC_CFGR_PPRE1_HCLK_DIV2);     /* Set. 32MHz Max. 36MHz */
	rcc_set_ppre2(RCC_CFGR_PPRE2_HCLK_NODIV);    /* Set. 64MHz Max. 72MHz */

	/*
	 * Sysclk runs with 72MHz -> 2 waitstates.
	 * 0WS from 0-24MHz
	 * 1WS from 24-48MHz
	 * 2WS from 48-72MHz
	 */
	flash_set_ws(FLASH_ACR_LATENCY_2WS);

	/*
	 * Set the PLL multiplication factor to 9.
	 * 8MHz (external) * 9 (multiplier) = 72MHz
	 */
	rcc_set_pll_multiplication_factor(RCC_CFGR_PLLMUL_PLL_CLK_MUL8);

	/* Select HSE as PLL source. */
	rcc_set_pll_source(RCC_CFGR_PLLSRC_HSE_CLK);

	/*
	 * External frequency undivided before entering PLL
	 * (only valid/needed for HSE).
	 */
	rcc_set_pllxtpre(RCC_CFGR_PLLXTPRE_HSE_CLK);

	/* Enable PLL oscillator and wait for it to stabilize. */
	rcc_osc_on(RCC_PLL);
	rcc_wait_for_osc_ready(RCC_PLL);

	/* Select PLL as SYSCLK source. */
	rcc_set_sysclk_source(RCC_CFGR_SW_SYSCLKSEL_PLLCLK);

	/* Set the peripheral clock frequencies used */
	rcc_ahb_frequency = 64000000;
	rcc_apb1_frequency = 32000000;
	rcc_apb2_frequency = 64000000;
}

void init() {
  // Configure clocks
  rcc_clock_setup_in_hse_8mhz_out_64mhz();
  rcc_periph_clock_enable(RCC_GPIOA);

  // Initialize USART
  Uart::init();
  printf("\n\nUART Ready\n");

  // Initialize CAN peripheral
  CAN::init();
  printf("CAN Ready\n");

  	gpio_set_mode(
		GPIOA,
		GPIO_MODE_OUTPUT_2_MHZ,
		GPIO_CNF_OUTPUT_PUSHPULL,
		GPIO5);

    gpio_set(GPIOA, GPIO5);
}

void loop() {
  // Loop over any characters pending in the UART Rx buffer,
  // and send each one over the CAN bus as a single message.
  char c;
  while (Uart::get(&c)) {
    gpio_set(GPIOA, GPIO5);
    Uart::put(c);
    CAN::Frame frame;
    frame.id = 5;
    frame.extended_id = false;
    frame.rtr = false;
    frame.len = 1;
    frame.data[0] = c;
    CAN::transmit(frame);
    gpio_clear(GPIOA, GPIO5);
  }

  // Loop over any CAN frames pending in the CAN buffer, and print out
  // the ID of the message and all the data bytes.
  CAN::Frame frame;
  while (CAN::pop(frame)) {
    gpio_set(GPIOA, GPIO5);
    // Do something with the received frame
    printf("Rx ID: %u Data: ", frame.id);
    for (int i = 0; i < frame.len; i++) {
      printf("%02x:%c", frame.data[i], frame.data[i]);
    }
    printf("\n");
    gpio_clear(GPIOA, GPIO5);
  }
}
