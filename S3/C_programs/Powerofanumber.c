#include <stdio.h>
#include <stdlib.h>

int main ()
{
   int pow, num, a = 1;
   printf("Please enter a number\n");
   scanf ("%d", &num);
   printf ("Please enter the power of the number \n");
   scanf ("%d", &pow);
   for (int i = 1; i <= pow; i++)
   {
      a = a * num;
   }
   printf("The answer is %d", a);
return 0;
}