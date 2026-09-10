CC=gcc
CFLAGS=-c -Wall
all: program
OBJECTS = main.o isEven.o isOdd.o

program: $(OBJECTS)
	$(CC) $(OBJECTS) -o program
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: all clean

clean:
	rm -rf *.o program
