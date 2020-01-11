#include<time.h>
#include<stdio.h>
#include<stdlib.h>

#define INT_BITS 64

int leftRotate(int n, unsigned int d)
{
   /* In n<<d, last d bits are 0. To put first 3 bits of n at
     last, do bitwise or of n<<d with n >>(INT_BITS - d) */
   return (n << d)|(n >> (INT_BITS - d));
}

/*Function to right rotate n by d bits*/
int rightRotate(int n, unsigned int d)
{
   /* In n>>d, first d bits are 0. To put last 3 bits of at
     first, do bitwise or of n>>d with n <<(INT_BITS - d) */
   return (n >> d)|(n << (INT_BITS - d));
}

int ichinokata_r(int num){
	return num ^ 0xfaceb00c;
}

int ninokata_r(int num){
	return num - 76248;
}

int sanokata_r(int num){
	int tmp1 = leftRotate((num & 0xAAAAAAAA), 2);
	int tmp2 = rightRotate((num & 0x55555555), 4);

	return tmp1 | tmp2;
}

int yonnokata_r(int num){
	return(ichinokata_r(ninokata_r(sanokata_r(num))));
}

int main(){

	time_t now;
	time(&now);

	struct tm *t;

	t = localtime(&now);
	t->tm_year = 2019 - 1900;
	t->tm_mon = 8;
	t->tm_mday = 4;
	t->tm_wday = 3;
	t->tm_hour = 5;
	t->tm_min = 25;
	t->tm_sec = 14;

	time_t then = mktime(t);
	/*struct tm *tt = gmtime(then);*/
	/*printf("mday: %d", tt->tm_mday);*/

	srand(then);


	FILE *fp = fopen("./output.txt.old", "rb");

	int num, res;
	while(fread(&num, sizeof(char), 4, fp) == 4){
		switch(rand() % 4){
			case 0:
				res = ichinokata_r(num);
				break;
			case 1:
				res = ninokata_r(num);
				break;
			case 2:
				res = sanokata_r(num);
				break;
			case 3:
				res = yonnokata_r(num);
				break;
		}
		printf("%d ", res);
	}

	fclose(fp);

	return 0;
}
