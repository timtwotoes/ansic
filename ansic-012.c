#include <stdio.h>
#include <limits.h>

int main() {
   printf("%-12s %20s %s\n", "Constant", "Size", "Description");
   printf("%-12s %20d bits in a char\n", "CHAR_BIT", CHAR_BIT);
   printf("%-12s %20d maximum value of char\n", "CHAR_MAX", CHAR_MAX);
   printf("%-12s %20d maximum value of uchar\n", "UCHAR_MAX", UCHAR_MAX);
   printf("%-12s %20d maximum value of schar\n", "SCHAR_MAX", SCHAR_MAX);
   printf("%-12s %20d minimum value of char\n", "CHAR_MIN", CHAR_MIN);
   printf("%-12s %20d minimum value of schar\n", "SCHAR_MIN", SCHAR_MIN);
   printf("%-12s %20d maximum value of int\n", "INT_MAX", INT_MAX);
   printf("%-12s %20d minimum value of int\n", "INT_MIN", INT_MIN);
   printf("%-12s %20ld maximum value of long\n", "LONG_MAX", LONG_MAX);
   printf("%-12s %20ld minimum value of long\n", "LONG_MIN", LONG_MIN);
   printf("%-12s %20d maximum value of short\n", "SHRT_MAX", SHRT_MAX);
   printf("%-12s %20d minimum value of short\n", "SHRT_MIN", SHRT_MIN);
   printf("%-12s %20u maximum value of unsigned int\n", "UINT_MAX", UINT_MAX);
   printf("%-12s %20lu maximum value of unsigned long\n", "ULONG_MAX", ULONG_MAX);
   printf("%-12s %20d maximum value of unsigned short\n", "USHRT_MAX", USHRT_MAX);
   return 0;
}
