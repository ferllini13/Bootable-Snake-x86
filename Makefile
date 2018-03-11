IMG = ./bin/tetranglix.img
SRC = ./src/snake.asm

CC = nasm
CCR = qemu-system-i386 

CFLAGS = -fbin -o
RFLAGS = -fda


$(OUTIMG): $(SRC) 
	$(CC) $(SRC) $(CFLAGS) $(IMG)



run:$(OUTIMG)
	$(CCR) $(RFLAGS) $(IMG)


clean: 
	rm -f $(IMG)

