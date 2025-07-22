#import <Foundation/Foundation.h>

int main() {
  int x = 42;
  char a[10];

  NSLog(@"Address of x = %p\n", &x);
  NSLog(@"Address of a = %p\n", &a);

  return 0;
}