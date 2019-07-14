BINARY = controller

LDSCRIPT = STM32F103C8T6.ld
OPENCM3_DIR = ./libopencm3/

LIBNAME		= opencm3_stm32f1

DEFS		+= -DSTM32F1 -DPRINTF_DISABLE_SUPPORT_FLOAT
FP_FLAGS	?= -msoft-float
ARCH_FLAGS	= -mthumb -mcpu=cortex-m3 $(FP_FLAGS) -Wl,--wrap=malloc --specs=nano.specs

BMP_PORT = /dev/ttyACM0

include rules.mk
