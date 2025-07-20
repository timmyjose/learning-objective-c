#include <Foundation/Foundation.h>

int main() {
  NSLog(@"Storage size of char is: %lu bytes\n", sizeof(char));
  NSLog(@"Storage size of int is: %lu bytes\n", sizeof(int));
  NSLog(@"Storage size of long is %lu bytes\n", sizeof(long));
  NSLog(@"Storage size of float is %lu bytes\n", sizeof(float));
  NSLog(@"Storage size of double is is %lu bytes\n", sizeof(double));
  NSLog(@"Storage size of long double is is %lu bytes\n", sizeof(long double));

  return 0;
}
