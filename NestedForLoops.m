#import <Foundation/Foundation.h>

int main() {
  for (int i = 1; i <= 100; i++) {
    if (i == 1) {
      NSLog(@"%d is not prime\n", i);
    } else {
      bool isPrime = true;
      for (int d = 2; d < i; d++) {
        if (i == 1 || (i % d) == 0) {
          isPrime = false;
          break;
        }
      }

      if (isPrime) {
        NSLog(@"%d is prime\n", i);
      } else {
        NSLog(@"%d is not prime\n", i);
      }
    }
  }

  return 0;
}
