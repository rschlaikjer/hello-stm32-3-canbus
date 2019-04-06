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
  printf("\n\nUART Ready\n");

  // Initialize CAN peripheral
  CAN::init();
  printf("CAN Ready\n");

  gpio_mode_setup(GPIOB, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, GPIO12 | GPIO13);
  gpio_set(GPIOB, GPIO12 | GPIO13);
}

void loop() {
  // Loop over any characters pending in the UART Rx buffer,
  // and send each one over the CAN bus as a single message.
  char c;
  while (Uart::get(&c)) {
    gpio_set(GPIOB, GPIO12);
    Uart::put(c);
    CAN::Frame frame;
    frame.id = 1;
    frame.extended_id = false;
    frame.rtr = false;
    frame.len = 1;
    frame.data[0] = c;
    CAN::transmit(frame);
    gpio_clear(GPIOB, GPIO12);
  }

  // Loop over any CAN frames pending in the CAN buffer, and print out
  // the ID of the message and all the data bytes.
  CAN::Frame frame;
  while (CAN::pop(frame)) {
    gpio_set(GPIOB, GPIO13);
    // Do something with the received frame
    printf("Rx ID: %u Data: ", frame.id);
    for (int i = 0; i < frame.len; i++) {
      printf("%02x:%c", frame.data[i], frame.data[i]);
    }
    printf("\n");
    gpio_clear(GPIOB, GPIO13);
  }
}
