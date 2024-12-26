

import 'package:library_system/book.dart';
import 'package:library_system/library.dart';
import 'package:library_system/user.dart';

void main() {
  // create library instance
  var myLibrary= Library();

  //add books
  myLibrary.addBook(Book('1', 'dart programming language'));
  myLibrary.addBook(Book('2', 'mobile development using flutter'));
  myLibrary.addBook(Book('3', 'stat-management by getx'));

  // add users
  myLibrary.addUser(User('1', 'ghada'));
  myLibrary.addUser(User('2', 'nada'));
  myLibrary.addUser(User('3', 'maha'));

  //borrow book by book id , user id
  myLibrary.borrowBook('1', '1');
  myLibrary.borrowBook('2', '2');

  // return book by book id
  myLibrary.returnBook('2');

  //display final state
  myLibrary.displayInfo();

}

