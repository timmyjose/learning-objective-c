#import <Foundation/Foundation.h>

void basicDemo() {
  int x = 17, count = 5;
  CGFloat mean = (CGFloat)x / count;

  NSLog(@"Mean = %.3lf", mean);
}

int main() {
  basicDemo();
  return 0;
}