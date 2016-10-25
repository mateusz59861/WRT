CC=gcc
LFLAGS=-Wall
RFLAGS=-lwiringPi

adcpwm: adcpwm.o
	$(CC) $(LFLAGS) $@ $< $(RFLAGS)
 
adcpwm.o: adcpwm.c
	$(CC) $(LFLAGS) -o $@ $< $(RFLAGS)
 
.PHONY: clean
 
clean:
	rm -f adcpwm adcpwm.o