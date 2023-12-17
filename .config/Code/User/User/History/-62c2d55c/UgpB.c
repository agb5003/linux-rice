#include <stdio.h>
#include <time.h>

#define NUM 10000

int swap(int *px, int *py);

int main() {
    int numbers[NUM] = {}
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

int swap(int *px, int *py) {
    *px += *py;
    *py = *px - *py;
    *px -= *py;
}