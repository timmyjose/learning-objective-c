#import <Foundation/Foundation.h>

@interface MaxMin : NSObject
- (int)max:(int)a b:(int)b;
- (int)min:(int)a b:(int)b;
@end

@implementation MaxMin
- (int)max:(int)a b:(int)b {
  return a >= b ? a : b;
}

- (int)min:(int)a b:(int)b {
  return a < b ? a : b;
}
@end

int main() {
  int a = 12, b = 3;

  MaxMin *maxMin = [[MaxMin alloc] init];

  NSLog(@"Maximum of %d and %d = %d\n", a, b, [maxMin max:a b:b]);
  NSLog(@"Minimum of %d and %d = %d\n", a, b, [maxMin min:a b:b]);

  // make sure to release memory
  [maxMin release];

  return 0;
}