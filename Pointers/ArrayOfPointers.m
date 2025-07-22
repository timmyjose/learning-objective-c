#import <Foundation/Foundation.h>

void arrayOfPointersToIntDemo() {
  int a[] = {1, 2, 3, 4, 5};
  int len = sizeof(a) / sizeof(a[0]);

  int *p[len]; // array of pointers to intS

  for (int i = 0; i < len; i++) {
    p[i] = &a[i];
  }

  // print the array using the pointers array
  for (int i = 0; i < len; i++) {
    NSLog(@"%d", *p[i]);
  }
}

void arrayOfPointersToStringsDemo() {
  char *a[] = {"Adam", "Bob", "Cassandra", "Dave", "Ethel"};
  int len = sizeof(a) / sizeof(a[0]);

  for (int i = 0; i < len; i++) {
    NSLog(@"%s", a[i]);
  }
}

int main() {
  arrayOfPointersToIntDemo();
  arrayOfPointersToStringsDemo();

  return 0;
}