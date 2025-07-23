#import <Foundation/Foundation.h>

@interface Person : NSObject {
  NSString *_name;
  NSInteger _age;
}

- (id)initWithName:(NSString *)name andAge:(NSInteger)age;
- (void)print;

@end

@interface Employee : Person {
  NSString *_education;
}

- (id)initWithName:(NSString *)name
            andAge:(NSInteger)age
      andEducation:(NSString *)educaton;
@end