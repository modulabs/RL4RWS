TARGET = -mcpu=cortex-m4 -mthumb -mfloat-abi=softfp -mfpu=vfp -fsingle-precision-constant
DEVICE_LIBS = device/stm32f30x
THIRD_PARTY_LIBS =

#GCCDIR=~/bin/arm-none-eabi/bin/
GCCDIR=

LDSCRIPT = $(DEVICE_LIBS)/ldscript.ld
ELF = bin/main.elf
 
CC = $(GCCDIR)arm-none-eabi-gcc
LD = $(GCCDIR)arm-none-eabi-gcc
OBJCOPY = $(GCCDIR)arm-none-eabi-objcopy
OBJDUMP = $(GCCDIR)arm-none-eabi-objdump
SIZE = $(GCCDIR)arm-none-eabi-size

CFLAGS = -O2 -Os -s -Wall -Wextra -pedantic -std=c99
CFLAGS+= $(TARGET) -fdata-sections -ffunction-sections
CFLAGS+= $(THIRD_PARTY_LIBS_INC)

LDFLAGS+= -T$(LDSCRIPT) $(TARGET) -mthumb -Wl,--gc-sections
LDFLAGS+= $(THIRD_PARTY_LIBS_OBJ)

SRCS_DEVICE_LIBS = $(shell find $(DEVICE_LIBS) -name '*.c')
SRCS = $(shell find -name '*.c' -not -path "*/device/*")
SRCS+= $(SRCS_DEVICE_LIBS)
OBJS = $(SRCS:.c=.o)
OBJS+= $(THIRD_PARTY_LIBS_OBJ)
 
all: $(ELF)
	$(OBJDUMP) --disassemble $< > bin/main.asm
	$(OBJCOPY) -O srec $< bin/main.s19
	$(OBJCOPY) -O binary $< bin/main.bin
	$(SIZE) $(ELF)

$(ELF): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@
 
%.o: %.s
	$(CC) -c $(CFLAGS) $< -o $@

CLEAN_FILES = $(shell find -name '*.o')
CLEAN_FILES+= bin/main*
clean:
	rm $(CLEAN_FILES) -rf
	rm device/device.h
	rm Makefile
