#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/rcc.h>

#include <printf.h>

#include <can.hpp>
#include <uart.hpp>

void init();
void loop();

int main() {
  init();
  while (true) {
    loop();
  }
}

void init() {
  // Configure clocks
  rcc_clock_setup_in_hsi_out_48mhz();
  rcc_periph_clock_enable(RCC_GPIOA);
  rcc_periph_clock_enable(RCC_GPIOB);

  // Initialize USART
  Uart::init();

  // Initialize CAN peripheral
  CAN::init();
}

void loop() {
  CAN::Frame frame;
  while (CAN::pop(frame)) {
    // Do something with the received frame
    printf("Rx ID: %u Data: ", frame.id);
    for (int i = 0; i < frame.len; i++) {
      printf("%02x ", frame.data[i]);
    }
    printf("\n");
  }
}
