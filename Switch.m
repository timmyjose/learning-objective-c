#import <Foundation/Foundation.h>

int main() {
  char grade = 'B';

  switch (grade) {
  case 'A':
    NSLog(@"Excellent!\n");
    break;
  case 'B':
    NSLog(@"Good!\n");
    break;
  case 'C':
    NSLog(@"Okay\n");
    break;
  case 'D':
    NSLog(@"Bad\n");
  case 'E':
    NSLog(@"Terrible!\n");
    break;
  case 'F':
    NSLog(@"You failed!\n");
    break;
  }

  return 0;
}
