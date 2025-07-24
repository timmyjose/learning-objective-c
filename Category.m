// A category is a way to add functionality to any class (even ones for which we
// do not have access to the source code)
#import <Foundation/Foundation.h>

// The category is just an identifier
@interface NSString (AddCopyrightString)
+ (NSString *)getCopyrightString; // make it a class member
@end

@implementation NSString (AddCopyrightString)
+ (NSString *)getCopyrightString {
  return @"(C) Copyright FooBar Inc.";
}
@end

int main() {
  NSString *copyrightString = [NSString getCopyrightString];
  NSLog(@"Copyright = %@", copyrightString);

  return 0;
}