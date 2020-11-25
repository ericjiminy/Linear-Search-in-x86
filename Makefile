# Eric Chun - jc2ppp - 10/29/20 - Makefile                                      

CXX = clang++
CXXFLAGS = -Wall -g
AS = nasm
ASFLAGS = -f elf64 -g
OBJECTS = linearSearch.o testLinearSearch.o

a.out: $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS)

clean:
	-rm -f *.o *~

