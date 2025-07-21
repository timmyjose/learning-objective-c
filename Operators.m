#import <Foundation/Foundation.h>

void arithmetidOperatorsDemo() {
  int a = 21;
  int b = 2;

  NSLog(@"%d + %d = %d\n", a, b, a + b);
  NSLog(@"%d - %d = %d\n", a, b, a - b);
  NSLog(@"%d * %d = %d\n", a, b, a * b);
  NSLog(@"%d / %d = %d\n", a, b, a / b);
}

void relationalOperatorsDemo() {
  int a = 21;
  int b = 2;

  if (a == b) {
    NSLog(@"%d is equal to %d\n", a, b);
  } else if (a < b) {
    NSLog(@"%d is less than %d\n", a, b);
  } else {
    NSLog(@"%d is greater than %d\n", a, b);
  }
}

void logicalOperatorsDemo() {
  NSLog(@"false && false = %d\n", false && false);
  NSLog(@"false && true = %d\n", false && true);
  NSLog(@"true && false = %d\n", true && false);
  NSLog(@"true && true = %d\n", true && true);

  NSLog(@"false || false = %d\n", false || false);
  NSLog(@"false || true = %d\n", false || true);
  NSLog(@"true || false = %d\n", true || false);
  NSLog(@"true || true = %d\n", true || true);

  NSLog(@"!false = %d\n", !false);
  NSLog(@"!true = %d\n", !true);
}

void miscellaneousOperatorsDemo() {
  int a = 21;
  short b = 21;
  char c = 'x';

  NSLog(@"sizeof(%d) = %lu bytes\n", a, sizeof(a));
  NSLog(@"sizeof(%d) = %lu bytes\n", b, sizeof(b));
  NSLog(@"sizeof(%c) = %lu bytes\n", c, sizeof(c));

  int *ptr = &a;

  NSLog(@"Value of a = %d\n", a);
  NSLog(@"Value of *ptr = %d\n", *ptr);
}

int main() {
  arithmetidOperatorsDemo();
  relationalOperatorsDemo();
  logicalOperatorsDemo();
  miscellaneousOperatorsDemo();

  return 0;
}