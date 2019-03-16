BINARY = controller

LDSCRIPT = STM32F091CBT6.ld
OPENCM3_DIR = ./libopencm3/

LIBNAME		= opencm3_stm32f0

DEFS		+= -DSTM32F0 -DPRINTF_DISABLE_SUPPORT_FLOAT
FP_FLAGS	?= -msoft-float
ARCH_FLAGS	= -mthumb -mcpu=cortex-m0 $(FP_FLAGS) -Wl,--wrap=malloc --specs=nano.specs

BMP_PORT = /dev/ttyACM0

include rules.mk
