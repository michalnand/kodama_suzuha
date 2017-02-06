CXX_SRCS = $(shell find  -name 'main.cpp')
CXX_SRCS+= $(shell find  ./usr -name '*.cpp')

CXX_SRCS+= $(shell find  ./kodama/controll -name '*.cpp')
CXX_SRCS+= $(shell find  ./kodama/drivers -name '*.cpp')

CXX_SRCS+= $(shell find  ./kodama/devices/avr -name '*.cpp')


INC = -I .
INC+= -I ./usr

INC+= -I ./kodama/
INC+= -I ./kodama/controll
INC+= -I ./kodama/drivers

INC+= -I ./kodama/devices/avr



TARGET = -mmcu=atmega328p



GCCPREFIX=avr-

ELF = bin/main.elf

CXX = $(GCCPREFIX)g++
LD = $(GCCPREFIX)g++
OBJCOPY = $(GCCPREFIX)objcopy
OBJDUMP = $(GCCPREFIX)objdump
SIZE = $(GCCPREFIX)size

CXXFLAGS = -c -O2 -Os -Wall -Wextra -pedantic -std=c++11 -fno-rtti -fno-exceptions $(INC) -g $(TARGET) -fdata-sections -ffunction-sections
LDFLAGS = $(TARGET) -Wl,--gc-sections



CXX_OBJS = $(CXX_SRCS:.cpp=.o)

all: $(ELF)
	$(OBJDUMP) --disassemble $< > bin/main.asm
	$(OBJCOPY) -O ihex $< bin/main.hex
	$(OBJCOPY) -O binary $< bin/main.bin
	$(SIZE) $(ELF)

$(ELF): $(CXX_OBJS)
	$(LD) $(LDFLAGS) -o $@ $(CXX_OBJS) $(OBJS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

CLEAN_FILES = $(shell find -name '*.o')
CLEAN_FILES+= bin/main*
clean:
	rm $(CLEAN_FILES) -rf
