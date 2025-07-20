#include <Foundation/Foundation.h>

@interface SampleClass:NSObject
  - (void)sampleMethod;
@end

@implementation SampleClass
- (void)sampleMethod {
  NSLog(@"Hello from SampleClass!");
}
@end

int main() {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  SampleClass *sampleClass = [[SampleClass alloc] init];
  [sampleClass sampleMethod];

  [pool drain];

  return 0;
}
