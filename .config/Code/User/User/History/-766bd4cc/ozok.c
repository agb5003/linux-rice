#include <stdio.h>
/* prototype declaration */
void swap(int *x, int *y);

int main(void) {
    int a,b;
    /* Input 2 integers */
    scanf("%d %d", &a, &b);
    /* Exchange the contents */
    swap(&a, &b);
    /* Display results */
    printf("%d %d\n", a, b);
    return 0;
}