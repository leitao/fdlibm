#include <stdio.h>
#include "jfdlibm.h"
#include "fdlibm.h"

int main(void)
{
 int itr;
 double t = 0;
 double c;

 for (itr = 1; itr < 100; itr++) {
   c  = jcos(itr);
   printf("%d %.17g\n", itr, c);
   t += c;
 }

 printf("cosine total sum is: %.17g\n", t);
}
