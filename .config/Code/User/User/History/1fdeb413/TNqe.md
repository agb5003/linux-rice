# Exercise 4-3: Selection Sort (sort_select.c)
Maximilian Fernaldy - C2TB1702

<p align='center'> <img src='./ex4-3.png' width=500> </p>

The principle of selection sort is to find the `i`-th smallest element and swap it with the `i`-th element in the array. For example, the first "selection" will look for the smallest element in the whole array, and place it in index `0`. The second selection will look for the second smallest element and place it in index `1`. This goes on until it reaches the last 2 numbers and swaps them if they're not already in the right order.

To program the selection sort, we initialize `i` to start from 0 and `j` to start at `i+1` (because we don't need to compare the `i`-th element with itself).

```C
for (i = 0; i < NUM-1; i++) {
    int smallest_index = i;
    printf("Search %d:\n", i+1);

    for (j = i+1; j < NUM; j++) {
        ...
    }
    ...
}
```

we also need to initialize `smallest_index` so that the program can remember the smallest number in each selection process. This can start at `i` for each selection, and we will change it later accordingly within the `j` level `for` loop.

```C
for (j = i+1; j < NUM; j++) {
    searches++;
    printf("[%d][%d] ", searches, swaps);
    for (int k = 0; k < NUM; k++) {
        if (k == i) { // Element to replace
            printf("*");
        } else if (k == j) { // Compared element
            printf(">");
        }
        if (k == smallest_index ) {
            printf("!");
        }
        printf("%d ", A[k]);
        // Insert new line if k reaches the end of the array
        if (k == NUM - 1) {
            printf("\n");
        }
    }
    // If compared number is smaller than current smallest number,
    // make it the new smallest
    if (A[j] < A[smallest_index]) {
        smallest_index = j;
    }
}
```

As for the `j` level `for` loop itself, we first increment `searches` by 1 at the start of each iteration, so that we can track how many searches are made in total. Then we display the current amount of searches and replacements with `printf`, and then display the current condition of the array inside the `k` level `for` loop. Similarly to sort_bubble, we use conditional operators with comparators to print the indicators.



[comment]: <> (Below is CSS code for the output HTML and pdf files. Don't touch them unless you know what you're doing.)
<style>
    figcaption{
    text-align:center;
        font-size:9pt
    }
    img{
        filter: drop-shadow(0px 0px 7px );
    }
    .noshade{
        filter: none
    }
</style>