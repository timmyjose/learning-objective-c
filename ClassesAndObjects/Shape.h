#import <Foundation/Foundation.h>

@interface Shape : NSObject
- (double)area;
- (double)perimeter;
- (void)print;
@end

@interface Square : Shape {
  double _side;
}
- (id)initWithSide:(double)side;
@end

@interface Rectangle : Shape {
  double _length;
  double _breadth;
}

- (id)initWithLength:(double)length andBreadth:(double)breadth;
@end

@interface Circle : Shape {
  double _radius;
}

- (id)initWithRadius:(double)radius;
@end