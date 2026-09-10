CC=gcc
CFLAGS=-c -Wall
all: program
OBJECTS = main.o isEven.o isOdd.o

program: $(OBJECTS)
	$(CC) $(OBJECTS) -o program
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf *.o 
