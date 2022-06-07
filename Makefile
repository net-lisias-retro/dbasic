all:	basic.o print.o input.o goto.o gosub.o math.o let.o \
		ifthen.o fornext.o data.o def.o
	$(CC) $(FLAGS) -o basic basic.o print.o input.o goto.o gosub.o \
		math.o let.o ifthen.o fornext.o data.o def.o $(LIBS)

clean:	
	/bin/rm -f *.o

LIBS = -lm
CC = gcc
FLAGS = -Wall

basic.o	:	basic.c
	$(CC) $(FLAGS) -c basic.c

print.o	:	print.c
	$(CC) $(FLAGS) -c print.c

input.o	:	input.c
	$(CC) $(FLAGS) -c input.c

goto.o	:	goto.c
	$(CC) $(FLAGS) -c goto.c

gosub.o	:	gosub.c
	$(CC) $(FLAGS) -c gosub.c

#eval.o	:	eval.c
#	$(CC) $(FLAGS) -c eval.c 

math.o	:	math.c
	$(CC) $(FLAGS) -c math.c

let.o	:	let.c
	$(CC) $(FLAGS) -c let.c

ifthen.o	:	ifthen.c
	$(CC) $(FLAGS) -c ifthen.c

fornext.o	:	fornext.c
	$(CC) $(FLAGS) -c fornext.c

data.o	:	data.c
	$(CC) $(FLAGS) -c data.c

def.o	:	def.c
	$(CC) $(FLAGS) -c def.c

