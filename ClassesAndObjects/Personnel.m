#import "Personnel.h"

@implementation Person
- (id)initWithName:(NSString *)name andAge:(NSInteger)age {
  _age = age;
  _name = name;
  return self;
}

- (void)print {
  NSLog(@"Name = %@", _name);
  NSLog(@"Age = %ld", _age);
}
@end

@implementation Employee
- (id)initWithName:(NSString *)name
            andAge:(NSInteger)age
      andEducation:(NSString *)education {
  self = [super initWithName:name andAge:age];
  _education = education;
  return self;
}

- (void)print {
  [super print];
  NSLog(@"Education = %@", _education);
}
@end

int main() {
  Person *bob = [[Person alloc] initWithName:@"Bob" andAge:42];
  [bob print];

  Person *alice = [[Employee alloc] initWithName:@"Alice"
                                          andAge:22
                                    andEducation:@"MBA"];
  [alice print];

  return 0;
}