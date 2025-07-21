#import <Foundation/Foundation.h>

@interface Swapper : NSObject
- (void)swap:(int *)x y:(int *)y;
@end

@implementation Swapper
- (void)swap:(int *)x y:(int *)y {
  int t = *x;
  *x = *y;
  *y = t;
}
@end

int main() {
  int x = 12, y = 3;
  Swapper *swapper = [[Swapper alloc] init];

  NSLog(@"Before swapping, x = %d, and y = %d\n", x, y);
  [swapper swap:&x y:&y];
  NSLog(@"After swapping, x = %d, and y = %d\n", x, y);

  [swapper release];

  return 0;
}