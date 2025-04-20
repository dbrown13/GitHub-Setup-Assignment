# Compiler and flags
CC = gcc
CFLAGS = -Wall -g

# Source files
SRCS = xml_parser.c

# Header files
#HDRS = helper.h

# Object files
OBJS = $(SRCS:.c=.o)

# Executable name
EXEC = xml_parser

# Default target
all: $(EXEC)

# Rule to create the executable
$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) -o $(EXEC) $(OBJS)

# Rule to create object files
%.o: %.c $(HDRS)
	$(CC) $(CFLAGS) -c $< -o $@

# Clean rule
clean:
	rm -f $(EXEC) $(OBJS)
