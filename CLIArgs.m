#import <Foundation/Foundation.h>

@interface Calculator : NSObject {
  NSInteger _a;
  NSInteger _b;
}

- (id)initWith:(NSInteger)a andB:(NSInteger)b;
- (NSInteger)add;
- (NSInteger)sub;
- (NSInteger)mul;
- (NSInteger)div;
@end

@implementation Calculator
- (id)initWith:(NSInteger)a andB:(NSInteger)b {
  _a = a;
  _b = b;
  return self;
}

- (NSInteger)add {
  return _a + _b;
}

- (NSInteger)sub {
  return _a - _b;
}

- (NSInteger)mul {
  return _a * _b;
}

- (NSInteger)div {
  return _b == 0 ? 0 : _a / _b;
}
@end

int main(int argc, char *argv[]) {
  if (argc != 3) {
    NSLog(@"Expected 2 arguments");
    exit(0);
  }

  NSInteger x = [[NSString stringWithFormat:@"%s", argv[1]] integerValue];
  NSInteger y = [[NSString stringWithFormat:@"%s", argv[2]] integerValue];

  Calculator *calc = [[Calculator alloc] initWith:x andB:y];
  NSLog(@"%ld + %ld = %ld", x, y, [calc add]);
  NSLog(@"%ld - %ld = %ld", x, y, [calc sub]);
  NSLog(@"%ld * %ld = %ld", x, y, [calc mul]);
  NSLog(@"%ld / %ld = %ld", x, y, [calc div]);

  return 0;
}