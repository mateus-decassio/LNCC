#include <stdlib.h>
#include <stdio.h>

int main (int argc, char *argv[]) {
       
         #pragma omp parallel
         {
		printf ("A ");
		printf ("race ");
		printf ("car ");
          }
	printf("\n");
	return(0);

}
