#import "Average.h"

@implementation Average
- (double)calculateAverageOfArray:(int *)a ofSize:(int)size {
  long long sum = 0LL;

  for (int i = 0; i < size; i++) {
    sum += (long long)a[i];
  }

  return (double)sum / size;
}
@end

int main() {
  Average *average = [[Average alloc] init];
  int a[] = {1, 2, 3, 4, 5, 6};
  int len = sizeof(a) / sizeof(a[0]);

  NSLog(@"Average = %.3f", [average calculateAverageOfArray:a ofSize:len]);

  return 0;
}