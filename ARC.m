#import <Foundation/Foundation.h>

@interface SampleClass : NSObject
- (void)sampleMethod;
@end

@implementation SampleClass
- (void)sampleMethod {
  NSLog(@"Hello, ARC!");
}
@end

int main() {
  // This is ARC
  @autoreleasepool {
    SampleClass *sclass = [[SampleClass alloc] init];
    [sclass sampleMethod];
  }

  return 0;
}