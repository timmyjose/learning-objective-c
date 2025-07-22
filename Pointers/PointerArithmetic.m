#import <Foundation/Foundation.h>

void pointerIncrementDemo() {
  int a[] = {1, 2, 3, 4, 5};
  int len = sizeof(a) / sizeof(int);
  int *p = &a[0];

  for (int i = 0; i < len; i++) {
    NSLog(@"a[%d] = %d\n", i, *p);
    p++;
  }
}

void pointerDecrementDemo() {
  int a[] = {1, 2, 3, 4, 5};
  int len = sizeof(a) / sizeof(a[0]);
  int *p = &a[len - 1];

  for (int i = len - 1; i >= 0; i--) {
    NSLog(@"a[%d] = %d\n", i, *p);
    p--;
  }
}

void pointerComparisonDemo() {
  int a[] = {1, 2, 3, 4, 5};
  int len = sizeof(a) / sizeof(a[0]);
  int *p = a; // same as int *p = &a[0]

  while (p <= &a[len - 1]) {
    NSLog(@"%d ", *p);
    p++;
  }
}

int main() {
  pointerIncrementDemo();
  pointerDecrementDemo();
  pointerComparisonDemo();

  return 0;
}