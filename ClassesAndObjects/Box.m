#import "Box.h"

@implementation Box
@synthesize length;
@synthesize breadth;
@synthesize height;

// strictly not necsssary here since the variables
// are given zero value
- (id)init {
  self = [super init];
  length = breadth = height = 0.0;
  return self;
}

- (id)init:(double)x andBreadth:(double)y andHeight:(double)z {
  self = [super init];
  length = x;
  breadth = y;
  height = z;

  return self;
}

- (double)calculateVolume {
  return length * breadth * height;
}
@end

int main() {
  Box *box1 = [[Box alloc] init];
  NSLog(@"Volume of box1 = %.3lf", [box1 calculateVolume]);

  Box *box2 = [[Box alloc] init:10.0 andBreadth:20.0 andHeight:30.0];
  NSLog(@"Volume of box2 = %.3lf", [box2 calculateVolume]);

  box2.height = 2;
  box2.length = 3;
  NSLog(@"Volume of box2 after adjustments = %.3lf", [box2 calculateVolume]);

  return 0;
}