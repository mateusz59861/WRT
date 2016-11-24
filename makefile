CC=gcc
LFLAGS=-Wall -o
RFLAGS=-lwiringPi

adcpwm: adcpwm.c
	$(CC) $(LFLAGS) $@ $< $(RFLAGS)
 
#adcpwm.o: adcpwm.c
#	$(CC) $(LFLAGS) -o $@ $< $(RFLAGS)
 
.PHONY: clean
 
clean:
	rm -f adcpwm adcpwm.o