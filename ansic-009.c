#include <stdio.h>

int power(int base, int n); /* the names base and n is disregarded */
int power_local(int, int); /* This is identical to the compiler */

int main() {
   int i;

   for (i = 0; i < 10; ++i)
      printf("%d %d %d\n", i, power(2, i), power_local(-3, i));

   return 0;
}

/* power: raise base to n-th power; n >= 0 */
int power(int base, int n) {
   int i, p;

   p = 1;
   for (i = 1; i <= n; ++i)
      p = p * base;
   return p;
}

/* parameters are passed by-value as copies */
int power_local(int base, int n) {
   int p;

   for (p = 1; n > 0; --n) /* n is a local copy */
      p = p * base;
   return p;
}
