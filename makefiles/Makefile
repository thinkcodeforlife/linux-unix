# Usage:
# make        # compile all binary
# make clean  # remove ALL binaries and objects

.PHONY 		= all clean
LINKERFLAG 	= -lm
CC			:= gcc
CFLAGS		:= -g -Wall
# ********************************************

SRCS 		:= $(wildcard *.c)
BINS 		:= $(SRCS:%.c=%)

all: ${BINS}
# ********************************************

%: %.o
	@echo "Checking.."
	${CC} ${LINKERFLAG} $< -o $@
%.o: %.c
	@echo "Creating object.."
	${CC} $(CFLAGS) -c $<

clean:
	@echo "Cleaning up..."
	rm -rvf *.o ${BINS}

# ********************************************

send:
	echo ${MSG}
# ********************************************

