// An Extension is an anonyjous Category:
//  - Only possible on classes for which we have the source code at compile time
//  - Adds private variables not accessible to subclasses
#import <Foundation/Foundation.h>

@interface SampleClass : NSObject {
  NSString *_name;
}

- (void)setInternalId;
- (NSString *)getExternalId;
@end

// Extension
@interface SampleClass () {
  NSString *_internalId; // private; not available to subclsses
}
@end

@implementation SampleClass
- (void)setInternalId {
  _internalId =
      [NSString stringWithFormat:@"UNIQUEINTERNALKEY%dUNIQUEINTERNALKEY",
                                 arc4random() % 100];
}

- (NSString *)getExternalId {
  return [_internalId stringByReplacingOccurrencesOfString:@"UNIQUEINTERNALKEY"
                                                withString:@""];
}
@end

int main() {
  SampleClass *class = [[SampleClass alloc] init];

  [class setInternalId];
  NSLog(@"External id: %@", [class getExternalId]);

  return 0;
}