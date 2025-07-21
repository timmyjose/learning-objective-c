#import <Foundation/Foundation.h>

@interface Square : NSObject {
  double area;
}

- (void)calculateAreaOfSide:(CGFloat)side;
- (void)printArea;
@end

@interface Rectangle : NSObject {
  double area;
}

- (void)calculateAreaOfLength:(CGFloat)length andBreadth:(CGFloat)breadth;
- (void)printArea;
@end