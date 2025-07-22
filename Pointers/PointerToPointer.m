#import <Foundation/Foundation.h>

int main() {
  int x = 42;
  int *p = &x;
  int **pp = &p;

  NSLog(@"x = %d", x);
  NSLog(@"x via p = %d", *p);
  NSLog(@"x via pp = %d", **pp);

  return 0;
}