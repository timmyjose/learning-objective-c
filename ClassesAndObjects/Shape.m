#import "Shape.h"
#include <Foundation/Foundation.h>
#import <math.h>

@implementation Shape
- (double)area {
  @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                 reason:@"Must override `area` in a sub class"
                               userInfo:nil];
}

- (double)perimeter {
  @throw
      [NSException exceptionWithName:NSInternalInconsistencyException
                              reason:@"Must override `perimeter` in a sub class"
                            userInfo:nil];
}

- (void)print {
  @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                 reason:@"Must override `print` in a sub class"
                               userInfo:nil];
}
@end

@implementation Square
- (id)initWithSide:(double)side {
  _side = side;
  return self;
}

- (double)area {
  return _side * _side;
}

- (double)perimeter {
  return 4.0 * _side;
}

- (void)print {
  NSLog(@"I am a Square of side %.2lf", _side);
}
@end

@implementation Rectangle
- (id)initWithLength:(double)length andBreadth:(double)breadth {
  _length = length;
  _breadth = breadth;
  return self;
}

- (double)area {
  return _length * _breadth;
}

- (double)perimeter {
  return 2.0 * (_length + _breadth);
}

- (void)print {
  NSLog(@"I am a rectangle of length %.2lf and breadth %.2lf", _length,
        _breadth);
}
@end

@implementation Circle
- (id)initWithRadius:(double)radius {
  _radius = radius;
  return self;
}

- (double)area {
  return M_PI * _radius * _radius;
}

- (double)perimeter {
  return 2.0 * M_PI * _radius;
}

- (void)print {
  NSLog(@"I am a circle of radius %.2lf", _radius);
}
@end

int main() {
  Shape *shape = [[Square alloc] initWithSide:10.0];
  [shape print];
  NSLog(@"Area = %.2lf", [shape area]);
  NSLog(@"Perimeter = %.2lf", [shape perimeter]);

  shape = [[Rectangle alloc] initWithLength:10.0 andBreadth:20.0];
  [shape print];
  NSLog(@"Area = %.2lf", [shape area]);
  NSLog(@"Perimeter = %.2lf", [shape perimeter]);

  shape = [[Circle alloc] initWithRadius:10.0];
  [shape print];
  NSLog(@"Area = %.2lf", [shape area]);
  NSLog(@"Perimeter = %.2lf", [shape perimeter]);

  return 0;
}