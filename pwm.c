#include <wiringPi.h>
#include <softPwm.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main (void)
{
  int bright ;

  printf ("Raspberry Pi wiringPi PWM test program\n") ;

  if (wiringPiSetup () == -1)
    exit (1) ;

  pinMode (1, PWM_OUTPUT) ;
  //softPwmCreate(4,0,100);
  
  //softPwmWrite(4, 70);
  //delay(100000);

  for (;;)
  {
    for (bright = 0 ; bright < 1024 ; ++bright)
    //for (bright = 0 ; bright < 100 ; ++bright)
    {
      pwmWrite (1, bright) ;
      //softPwmWrite(4, bright);
      delay (5) ;
    }

    for (bright = 1023 ; bright >= 0 ; --bright)
    //for (bright = 99 ; bright >= 0 ; --bright)
    {
      pwmWrite (1, bright) ;
      //softPwmWrite(4, bright);
      delay (5) ;
    }
  }

  return 0 ;
}
