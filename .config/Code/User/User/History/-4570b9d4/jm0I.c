#include <stdio.h>

void modifyValue(int *p) {
    x = x * 2;
}

int main() {
    int num = 5;

    modifyValue(num);

    printf("Value in main: %d\n", num);

    return 0;
}
