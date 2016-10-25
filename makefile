CC=gcc
LFLAGS=-Wall
RFLAGS=-lwiringPi

adcpwm: adcpwm.o
	$(CC) $(LFLAGS) $@ $<
 
adcpwm.o: adcpwm.c
	$(CC) $(LFLAGS) -o $@ $<
 
.PHONY: clean
 
clean:
	rm -f adc adc.o