CC=gcc
CFLAGS=-c -Wall
all: program

program: main.o isEven.o isOdd.o
	$(CC) main.o isEven.o isOdd.o -o program
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf *.o 
