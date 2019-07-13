#include <stdint.h>
#include <string.h>

#ifndef STM32F1
#define STM32F1
#endif

#include <libopencm3/cm3/nvic.h>
#include <libopencm3/stm32/can.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/rcc.h>

#include <can.hpp>
#include <queue.hpp>

namespace CAN {

namespace {
Queue<Frame, 64> msg_queue;
}

void init() {
  // Enable clock to the CAN peripheral & relevant IO port
  rcc_periph_clock_enable(RCC_AFIO);
  rcc_peripheral_enable_clock(&RCC_APB1ENR, RCC_APB1ENR_CAN1EN);
  rcc_periph_clock_enable(RCC_CAN1);

  // Reset the can peripheral
  can_reset(CAN1);

  // Initialize the can peripheral
  can_init(
      CAN1, // The can ID

      // Time Triggered Communication Mode?
      // http://www.datamicro.ru/download/iCC_07_CANNetwork_with_Time_Trig_Communication.pdf
      false, // No TTCM

      // Automatic bus-off management?
      // When the bus error counter hits 255, the CAN will automatically
      // remove itself from the bus. if ABOM is disabled, it won't
      // reconnect unless told to. If ABOM is enabled, it will recover the
      // bus after the recovery sequence.
      true, // Yes ABOM

      // Automatic wakeup mode?
      // 0: The Sleep mode is left on software request by clearing the SLEEP
      // bit of the CAN_MCR register.
      // 1: The Sleep mode is left automatically by hardware on CAN
      // message detection.
      true, // Wake up on message rx

      // No automatic retransmit?
      // If true, will not automatically attempt to re-transmit messages on
      // error
      false, // Do auto-retry

      // Receive FIFO locked mode?
      // If the FIFO is in locked mode,
      //  once the FIFO is full NEW messages are discarded
      // If the FIFO is NOT in locked mode,
      //  once the FIFO is full OLD messages are discarded
      false, // Discard older messages over newer

      // Transmit FIFO priority?
      // This bit controls the transmission order when several mailboxes are
      // pending at the same time.
      // 0: Priority driven by the identifier of the message
      // 1: Priority driven by the request order (chronologically)
      false, // TX priority based on identifier

      //// Bit timing settings
      //// Assuming 48MHz base clock, 87.5% sample point, 500 kBit/s data rate
      //// http://www.bittiming.can-wiki.info/
      // Resync time quanta jump width
      CAN_BTR_SJW_1TQ, // 16,
      // Time segment 1 time quanta width
      CAN_BTR_TS1_13TQ, // 13,
      // Time segment 2 time quanta width
      CAN_BTR_TS2_2TQ, // 2,
      // Baudrate prescaler
      4,

      // Loopback mode
      // If set, CAN can transmit but not receive
      false,

      // Silent mode
      // If set, CAN can receive but not transmit
      false);

  // Define our two example filters
  // Match all messages with IDs less than 256
  const uint16_t id1 = 0; // We want to assert the high bits are zero
  const uint16_t mask1 =
      (0b111 << 12); // The only bits we want to compare are STDID[10:8]

  // Match all messages with an ID of 342 and the RTR bit set
  const uint16_t id2 = ((342 << 5) | // STDID
                        (1 << 4)     // RTR
                        );
  const uint16_t mask2 = ((0b11111111111 << 5) | // Match all 11 bits of STDID
                          (1 << 4)               // Match the RTR bit
                          );

  // Create a filter mask that passes all critical broadcast & command
  // CAN messages
  can_filter_id_mask_16bit_init(0,          // Filter number
                                id1, mask1, // Our first filter
                                id2, mask2, // Our second filter
                                0,          // FIFO 0
                                true);      // Enable

  // Enable CAN interrupts for FIFO message pending (FMPIE)
  can_enable_irq(CAN1, CAN_IER_FMPIE0);
  nvic_enable_irq(NVIC_USB_LP_CAN_RX0_IRQ);
	nvic_enable_irq(NVIC_CAN_RX1_IRQ);
  //nvic_enable_irq(NVIC_CEC_CAN_IRQ);

  // Route the can to the relevant pins
  //const uint16_t pins = GPIO11 | GPIO12;
  //gpio_mode_setup(GPIOA, GPIO_MODE_AF, GPIO_PUPD_NONE, pins);
  //gpio_set_af(GPIOA, GPIO_AF4, pins);

	rcc_periph_clock_enable(RCC_GPIOA);
	gpio_set_mode(GPIOA,GPIO_MODE_OUTPUT_50_MHZ,GPIO_CNF_OUTPUT_ALTFN_OPENDRAIN,GPIO_CAN_TX);
	gpio_set_mode(GPIOA,GPIO_MODE_INPUT,GPIO_CNF_INPUT_FLOAT,GPIO_CAN_RX);

	gpio_primary_remap(                         // Map CAN1 to use PA11/PA12
	    AFIO_MAPR_SWJ_CFG_JTAG_OFF_SW_ON,      // Optional
			AFIO_MAPR_CAN1_REMAP_PORTA);            // CAN_RX=PA11, CAN_TX=PA12
}

int transmit(Frame &frame) {
  return can_transmit(CAN1, frame.id, frame.extended_id, frame.rtr, frame.len,
                      frame.data);
}

void receive(uint8_t fifo) {
  // Copy CAN message data into main ram
  Frame frame;
  can_receive(CAN1,
              fifo, // FIFO id
              true, // Automatically release FIFO after rx
              &frame.id, &frame.extended_id, &frame.rtr, &frame.filter_id,
              &frame.len, frame.data, &frame.ts);
  msg_queue.push(frame);
}

void isr() {
  // Fifo 0 message pending?
  if (CAN_RF0R(CAN1) & CAN_RF0R_FMP0_MASK) {
    receive(0);
  }

  // Fifo 1 message pending?
  if (CAN_RF1R(CAN1) & CAN_RF1R_FMP1_MASK) {
    // receive(1);
  }
}

bool has_pending_messages() { return msg_queue.available(); }

bool pop(Frame &out) { return msg_queue.pop(out); }

} // namespace CAN

//void cec_can_isr(void) { CAN::isr(); }

void usb_lp_can_rx0_isr(void) { CAN::isr(); }
void can_rx1_isr(void) { CAN::isr(); }
