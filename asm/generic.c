#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main() {

int i, j;
	for(i = 0; i < 32; i++) {
		for(j = 0; j < 8; j++) {
			printf("\t\"vmov.u8 %[r], d%d[%d]\\n\\t\"\n", i, j);
	  		printf("\t\"b sw_end\\n\"\n");
	  	}
	 }
	return 0;
}
