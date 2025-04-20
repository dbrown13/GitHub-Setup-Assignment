#all: xml_parser.exe

#xml_parser.exe: xml_parser.o
#	gcc -o xml_parser.exe xml_parser.o -lxml2

#xml_parser.o: xml_parser.c
#	gcc -c xml_parser.c 

#clean: 
#	rm xml_parser.o xml_parser.exe

# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -g 

# Source files
SOURCES = xml_parser.c

# Header files
# HEADERS = helper.h

# Executable name
TARGET = xml_parser

# Build rule
$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $(TARGET)

# Clean rule
clean:
	rm -f $(TARGET)
