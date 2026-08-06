#include <stdio.h>

int add(int a, int b);
int add(int a, int b){
  return a + b;
}

void printArray(int arr[], int size){
  for (size_t i = 0; i < size; i++){
    printf("%d", arr[i]);
  }
  printf("\n");
}

int main(void){
  int numbers[5] = {1, 2, 3, 4, 5};
  //it's the simpler way to works with C lang
  //i will works with c++ too
  //aways pass the size here!
  printArray(numbers, 5);
}

