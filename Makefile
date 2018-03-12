IMG = ./bin/snake.img
SRC = ./src/snake.asm

CC = nasm
CCR = qemu-system-i386 

CFLAGS = -fbin -o
RFLAGS = -fda

all: $(IMG)


$(IMG): $(SRC) 
	$(CC) $(SRC) $(CFLAGS) $(IMG)


run:$(IMG)
	$(CCR) $(RFLAGS) $(IMG)


clean: 
	rm -f $(IMG)

