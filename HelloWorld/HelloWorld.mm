#import "HelloWorld.h"
#import <iostream>

@implementation HelloWorld
- (void)hello {
  std::cout << "Hello from C++ inside Objective C!" << std::endl;
}
@end

int main() {
  @autoreleasepool {
    HelloWorld *demo = [[HelloWorld alloc] init];
    [demo hello];
  }

  return 0;
}
