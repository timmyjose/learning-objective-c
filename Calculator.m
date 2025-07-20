#include <Foundation/Foundation.h>

@interface Calculator:NSObject
  - (int)add:(int)a b:(int)b;
  - (int)sub:(int)a b:(int)b;
  - (int)mul:(int)a b:(int)b;
  - (int)div:(int)a b:(int)b;
@end

@implementation Calculator
- (int)add:(int)a b:(int)b {
  return a + b;
}

- (int)sub:(int)a b:(int)b {
  return a - b;
}

- (int)mul:(int)a b:(int)b {
  return a * b;
}

- (int)div:(int)a b:(int)b {
  if (b == 0) {
    return 0;
  }
  return a / b;
}
@end

int main() {
  int x = 10, y = 2;

  Calculator *calc = [[Calculator alloc] init];

  NSLog(@"%d + %d = %d\n", x, y, [calc add:x b:y]);
  NSLog(@"%d - %d = %d\n", x, y, [calc sub:x b:y]);
  NSLog(@"%d * %d = %d\n", x, y, [calc mul:x b:y]);
  NSLog(@"%d / %d = %d\n", x, y, [calc div:x b:y]);

  // free up the memory
  [calc release];

  return 0;
}