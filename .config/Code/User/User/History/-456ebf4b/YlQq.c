#include <stdio.h>

// Function that modifies the value of an integer
void modifyValue(int x) {
    x = x * 2;
}

int main() {
    int num = 5;

    // Pass the variable 'num' to the function
    modifyValue(num);

    // 'num' is still 5 because the function modified a copy of it
    printf("Value in main: %d\n", num);

    return 0;
}
