#import "Shapes.h"

@implementation Square
- (void)calculateAreaOfSide:(CGFloat)side {
  area = side * side;
}

- (void)printArea {
  NSLog(@"Area of square: %0.3lf\n", area);
}
@end

@implementation Rectangle
- (void)calculateAreaOfLength:(CGFloat)length andBreadth:(CGFloat)breadth {
  area = length * breadth;
}

- (void)printArea {
  NSLog(@"Area of rectange: %0.3lf\n", area);
}
@end

int main() {
  Square *square = [[Square alloc] init];
  [square calculateAreaOfSide:10];
  [square printArea];

  Rectangle *rect = [[Rectangle alloc] init];
  [rect calculateAreaOfLength:10 andBreadth:20];
  [rect printArea];

  return 0;
}