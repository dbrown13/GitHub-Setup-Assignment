all: xml_parser.exe

xml_parser.exe: xml_parser.o
	gcc -o xml_parser.exe xml_parser.o -lxml2

xml_parser.o: xml_parser.c
	gcc -c xml_parser.c 

clean: 
	rm xml_parser.o xml_parser.exe
