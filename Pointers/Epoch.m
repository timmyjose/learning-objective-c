#import "Epoch.h"

@implementation Epoch
- (void)getEpochTime:(int *)p {
  *p = time(NULL);
}
@end

int main() {
  int seconds = 0;

  Epoch *epoch = [[Epoch alloc] init];
  [epoch getEpochTime:&seconds];

  NSLog(@"Number of seconds since the the epoch: %d", seconds);

  return 0;
}