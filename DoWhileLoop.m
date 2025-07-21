#import <Foundation/Foundation.h>

int main() {
  int a = 10;

  do {
    NSLog(@"a = %d\n", a);
    a--;
  } while (a > 0);

  return 0;
}