#include <Foundation/Foundation.h>

int main() {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  NSLog(@"Hello again!");
  [pool drain];

  return 0;
}