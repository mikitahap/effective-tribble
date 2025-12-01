#include <stdio.h>
extern float srednia_harm(float* tablica, unsigned int n);
int main()
{
	int n1;
	float array[100];
	scanf("%d", &n1);
	for (int i = 0; i < n1; i++) {
		scanf("%f", &array[i]);
	}
	float a = srednia_harm(array, n1);
	printf("Srednia harmoniczna: %f ", a);
}
