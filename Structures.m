#import <Foundation/Foundation.h>

typedef struct Book {
  NSString *title;
  NSString *author;
  NSString *subject;
  NSInteger id;
} Book;

void displayBook(Book *book) {
  NSLog(@"Id: %ld", book->id);
  NSLog(@"Title: %@", book->title);
  NSLog(@"Author: %@", book->author);
  NSLog(@"Subject: %@", book->subject);
}

int main() {
  // stack-allocated
  Book book;
  book.title = @"The Art of Bobbing";
  book.author = @"Bob Bobbers";
  book.subject = @"Bobbing";
  book.id = 12;

  displayBook(&book);

  return 0;
}