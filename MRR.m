// Manual Retain-Release - similar to ARC, but manual

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject
- (void)sampleMethod;
@end

@implementation SampleClass
- (void)sampleMethod {
  NSLog(@"Hello from SampleClass");
}

- (void)dealloc {
  NSLog(@"SampleClass object deallocated");
  [super dealloc];
}
@end

int main() {
  SampleClass *sclass = [[SampleClass alloc] init];

  [sclass sampleMethod];
  NSLog(@"Retain count = %lu\n", [sclass retainCount]);

  [sclass retain];
  NSLog(@"Retain count after retain = %lu\n", [sclass retainCount]);
  [sclass release];

  [sclass release]; // only this will trigger the `dealloc`

  return 0;
}