#include <errno.h>
#include <stdarg.h>
#include <unistd.h>

#ifndef STM32F1
#define STM32F1
#endif

#include <libopencm3/cm3/nvic.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/usart.h>

#include <printf.h>

#include <queue.hpp>

namespace Uart {

namespace {
Queue<char, 256> _tx_buffer;
Queue<char, 256> _rx_buffer;
}

void init() {
  // For the peripheral to work, we need to enable it's clock
  rcc_periph_clock_enable(RCC_USART1);
  // From the datasheet for the STM32F0 series of chips (Page 30, Table 11)
  // we know that the USART1 peripheral has it's TX line connected as
  // alternate function 1 on port A pin 9.
  // In order to use this pin for the alternate function, we need to set the
  // mode to GPIO_MODE_AF (alternate function). We also do not need a pullup
  // or pulldown resistor on this pin, since the peripheral will handle
  // keeping the line high when nothing is being transmitted.
  gpio_set_mode(GPIOA,
		GPIO_MODE_OUTPUT_50_MHZ,
		GPIO_CNF_OUTPUT_ALTFN_PUSHPULL,
		GPIO_USART1_TX);

  gpio_set_mode(GPIOA,
    GPIO_MODE_INPUT,
    GPIO_CNF_INPUT_FLOAT,
    GPIO_USART1_RX);

  // Now that the pins are configured, we can configure the USART itself.
  // First, let's set the baud rate at 9600
  usart_set_baudrate(USART1, 9600);
  // Each datum is 8 bits
  usart_set_databits(USART1, 8);
  // No parity bit
  usart_set_parity(USART1, USART_PARITY_NONE);
  // One stop bit
  usart_set_stopbits(USART1, USART_CR2_STOPBITS_1);
  // For a debug console, we only need unidirectional transmit
  usart_set_mode(USART1, USART_MODE_TX_RX);
  // No flow control
  usart_set_flow_control(USART1, USART_FLOWCONTROL_NONE);
  // Enable the peripheral
  usart_enable(USART1);

  // Enable interrupts for tx/rx
  nvic_enable_irq(NVIC_USART1_IRQ);
  usart_enable_rx_interrupt(USART1);
  usart_enable_tx_interrupt(USART1);
}

void put(char c) {
  _tx_buffer.push(c);
  usart_enable_tx_interrupt(USART1);
}

bool get(char *c) { return _rx_buffer.pop(*c); }

void flush() {
  while (_tx_buffer.available()) {
  }
}

void isr() {
  // Check if interrupt is signalling TX ready
  if (usart_get_flag(USART1, USART_FLAG_TXE)) {
    // Try and pop a byte from the tx buffer
    char c;
    if (_tx_buffer.pop(c)) {
      // Move the next byte of data to the tx buffer
      usart_send(USART1, c);
    } else {
      // If there's no more data to be sent, disable this interrupt
      usart_disable_tx_interrupt(USART1);
    }
  }

  // Check if data has been received (RX Not Empty)
  if (usart_get_flag(USART1, USART_FLAG_RXNE)) {
    const uint16_t c = usart_recv(USART1);
    // Might fail if buffer is full!
    _rx_buffer.push(c);
  }
}

} // namespace Uart

void _putchar(char c) {
  if (c == '\n') {
    Uart::put('\r');
  }
  Uart::put(c);
}

void usart1_isr(void) { Uart::isr(); }

