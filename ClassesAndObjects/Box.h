#import <Foundation/Foundation.h>

@interface Box : NSObject {
  double length;
  double breadth;
  double height;
}

@property(nonatomic, readwrite) double length;
@property(nonatomic, readwrite) double breadth;
@property(nonatomic, readwrite) double height;

- (id)init:(double)x andBreadth:(double)y andHeight:(double)z;

- (double)calculateVolume;
@end