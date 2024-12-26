import 'package:library_system/book.dart';
import 'package:library_system/user.dart';

//Library Class
class Library{
  List <Book> books=[];
  List <User> users=[];

  //method to add book
  void addBook(Book book){
    books.add(book);
    print('The Book ${book.title} is added');
  }

  //method to add user
  void addUser(User user){
    users.add(user);
    print('${user.name} is registered');
  }
  
  void borrowBook(String bookId, String userId ){
    Book?book;
    User?user;

    //search for book by book id
    for(var b in books){
      if(b.id==bookId){
        book=b;
        break;
      }
    }

    //search for user by user id
    for(var u in users){
      if(u.id==userId){
        user=u;
        break;
      }
    }
    //check if the book exists
    if(book== null){
      print("This book is not available by $bookId");
      return;
    }
    //check if the user exists
    if(user== null){
      print("This user is not available by $userId");
      return;
    }
    //check if the book is borrowed or not
    if(book.isBorrowed) {
      print("${book.title} is already borrowed");
    }else{
      book.isBorrowed=true;
      print("The user ${user.name} is borrowed the book is ${book.title}");
    }
    
  }

  void returnBook(String bookId){
    Book?book;
    // search for book
    for(var b in books){
      if(b.id==bookId){
        book=b;
        break;
      }
    }
    //check if the book exists
    if(book== null){
      print("This book is not available by $bookId");
      return;
    }
    //check if the book is borrowed or not
    if(!book.isBorrowed) {
      print("${book.title} is borrowed");
    }else{
      book.isBorrowed=false;
      print("The book ${book.title} is returned");
    }
  }
  // method to display the final state
  void displayInfo(){
    print("----------  Library Information:  -----------");
    print("The Books are :");
    books.forEach((book)=>book.displayBookInfo());
    print("---------------------------------");
    print("The Users are :");
    users.forEach((user)=>user.displayUserInfo());
  }
}