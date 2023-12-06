CFLAGS = -Os -march=armv7-a -mtune=cortex-a9 -nostdlib -Wl,-s,-Tssbl.ld

all: ssbl.elf

%.elf: %.c
	arm-none-eabi-gcc $(CFLAGS) -o $@ $^

clean:
	rm -f ssbl.elf
