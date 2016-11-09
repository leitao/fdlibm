#include <stdio.h>
#include "jfdlibm.h"
#include "fdlibm.h"

int main(void)
{
 int itr;
 double t = 0;
 double c;

 for (itr = 1; itr < 10000000; itr++) {
   c  = jcos(itr);
   t += c;
 }

 printf("cosine total sum is: %.17g\n", t);
}
