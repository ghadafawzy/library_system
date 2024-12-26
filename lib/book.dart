//Book Class
class Book{
  String id;
  String title;
  bool isBorrowed;

  Book(this.id,this.title,{this.isBorrowed=false});

  void displayBookInfo(){
    print(" Book Id is: ${id} - Book title is : ${title} -"
        " This book is borrowed or not: ${isBorrowed}");
  }

}