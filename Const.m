#import <Foundation/Foundation.h>

int main() {
  const int LENGTH = 10;
  const int WIDTH = 20;
  const char NEWLINE = '\n';

  NSLog(@"Area = %d", LENGTH * WIDTH);
  NSLog(@"%c", NEWLINE);

  return 0;
}