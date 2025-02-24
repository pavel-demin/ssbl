CFLAGS = -Os -march=armv7-a -mtune=cortex-a9 -nostdlib -n -s -T ssbl.ld

all: ssbl.elf

%.elf: %.c
	arm-none-eabi-gcc $(CFLAGS) -o $@ $^

clean:
	rm -f ssbl.elf
