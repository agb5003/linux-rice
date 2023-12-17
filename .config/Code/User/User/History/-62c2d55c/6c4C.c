#include <stdio.h>
#include <time.h>

#define NUM 100

int main() {
    int numbers[NUM] = {42, 17, 98, 23, 56, 34, 72, 81, 10, 5, 63, 49, 1, 77, 39, 92, 30, 68, 14, 50,
                     100, 45, 87, 19, 73, 61, 8, 95, 26, 53, 70, 11, 84, 37, 69, 3, 78, 22, 59, 16, 91,
                     31, 67, 7, 64, 12, 89, 47, 25, 55, 96, 36, 82, 28, 60, 4, 79, 43, 15, 50, 74, 20,
                     54, 32, 93, 65, 9, 88, 38, 71, 18, 75, 6, 44, 85, 27, 58, 13, 76, 21, 94, 24, 66,
                     29, 52, 90, 48, 35, 83, 57, 33, 99, 62, 40, 97, 46, 19, 2, 11, 76, 36, 90, 52};
    // Sorting algorithm (selection)
    printf("Selection sorting...\n");
    
    clock_t start = clock();

    int temp;
    int comparisons = 0, swaps = 0;
    for (int i = 0; i < NUM-1; i++) {
        int smallest_index = i;
        printf("Search %d:\n", i+1);

        for (int j = i+1; j < NUM; j++) {
            comparisons++;
            printf("[%d][%d] ", comparisons, swaps);
            for (int k = 0; k < NUM; k++) {
                if (k == i) { // Element to replace
                    printf("*");
                } else if (k == j) { // Compared element
                    printf(">");
                }
                if (k == smallest_index ) {
                    printf("!");
                }
                printf("%d ", numbers[k]);
                // Insert new line if k reaches the end of the array
                if (k == NUM - 1) {
                    printf("\n");
                }
            }
            // If compared number is smaller than current smallest number,
            // make it the new smallest
            if (numbers[j] < numbers[smallest_index]) {
                smallest_index = j;
            }
        }

        // At the end of the search, swap smallest with element to replace
        // Use variable pointers to swap and do it without allocating
        // extra memory
        if (i != smallest_index) {
            int *px = &numbers[i];
            int *py = &numbers[smallest_index];
            swap(px, py);
        }
        printf("\n");
    }

    /* display array after sorting */
    printf("Sorted array: \n");
    for (int i = 0; i < NUM; i++){
        printf("%d ", numbers[i]);
    }
    printf("\n");

    clock_t end = clock();

    double time_elapsed = ((double) end - start) / CLOCKS_PER_SEC;

    printf("Done in %lf seconds.\n", time_elapsed);
}