#import <Foundation/Foundation.h>

int main() {
  int x = 42;
  int *p = &x;

  NSLog(@"x direct value = %d\n", x);
  NSLog(@"x value through pointer = %d\n", *p);

  *p += 100;
  NSLog(@"x value after modification = %d, via pointer = %d\n", x, *p);

  return 0;
}