all: a

a: main.o registration.o bookTicket.o
        gcc -g -Wall -fprofile-arcs -ftest-coverage main.o registration.o bookTicket.c -o a

main.o: main.c allFunctions.h
        @echo "Compiling main.c file"
        gcc -c main.c

registration.o: registration.c allFunctions.h
        @echo "Compiling registration.c file"
        gcc -c registration.c

bookTicket.o: bookTicket.c allFunctions.h
        @echo "Compiling bookTicket.c file"
        gcc -c bookTicket.c

clean:
        rm main.o registration.o bookTicket.o a