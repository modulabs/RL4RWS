

arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -c start_stm32f10x.c

arm-none-eabi-ld --section-start .isr_vectorsflash=0x08000000 -Ttext 0x08000080 --entry=Reset_Handler -o start_stm32f10x.elf start_stm32f10x.o

arm-none-eabi-objcopy -O binary start_stm32f10x.elf start_stm32f10x.bin

arm-none-eabi-objdump -D start_stm32f10x.elf > obj_dump_nomake.txt
