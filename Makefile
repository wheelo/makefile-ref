TARGET=hello

CC=g++

CFLAGS=-c -Wall

all: exec

ifeq (1, $(clean))
	rm *o $(TARGET)
endif

#test: clean exec

%.o : %.cpp
	$(CC) $(CFLAGS) $<

clean:
	rm *o $(TARGET)

exec: $(TARGET)
	./$(TARGET)

$(TARGET): main.o factorial.o $(TARGET).o
	$(CC) main.o factorial.o $@.o -o $@






