#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define SIZE 100000

// declare the array statically
void f_static() {
    static int static_arr[SIZE];

    for (int i = 0; i < SIZE; i++){
        static_arr[i] = i;
    }
}

void f_stack(){
    int stack_arr[SIZE];
    for (int i = 0; i < SIZE; i++){
        stack_arr[i] = i;
    }
}

void f_heap(){
   int *heap_arr = malloc(SIZE * sizeof(int));

    for (int i = 0; i < SIZE; i++){
        heap_arr[i] = i;
    }

    free(heap_arr);
    heap_arr = NULL;
}

int main()
{

    // calling each function 200_000 times
    clock_t start_static = clock();
    for (int i = 0; i < 200000; i++){
        f_static();
    }
    clock_t end_static = clock();

    double time_comp_static = ((double)end_static - start_static)/CLOCKS_PER_SEC;

    printf("Time of execution for statically declared array is %f seconds\n", time_comp_static);


    clock_t start_stack = clock();
    for (int i = 0; i < 200000; i++){
        f_stack();
    }
    clock_t end_stack = clock();

    double time_comp_stack = ((double)end_stack - start_stack)/CLOCKS_PER_SEC;

    printf("Time of execution for array on stack is %f seconds\n", time_comp_stack);

    
    clock_t start_heap = clock();
    for (int i = 0; i < 200000; i++){
        f_heap();
    }
    clock_t end_heap = clock();

    double time_comp_heap = ((double)end_heap - start_heap)/CLOCKS_PER_SEC;

    printf("Time of execution for array on heap is %f seconds\n", time_comp_heap);


}