import 'package:flutter/material.dart';
import 'package:pocket_books/bookItem.dart';
import 'package:pocket_books/data/listData.dart';
import 'modal/book.dart';

// ignore: must_be_immutable
class BookList extends StatelessWidget {
  late List<Book> allBooks;
  BookList() {
    allBooks = prepareData();
    print(prepareData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          elevation: 10,
          scrolledUnderElevation: 20,
          clipBehavior: Clip.hardEdge,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/images/book.png',
              fit: BoxFit.fill,
            ),
            titlePadding: EdgeInsets.symmetric(vertical: 10),
            title: Text(
              'Check out today\'s digest',
              style: TextStyle(
                  shadows: [
                    Shadow(
                        color: Color.fromARGB(255, 44, 44, 43),
                        blurRadius: 5,
                        offset: Offset(0, 1)),
                  ],
                  
                  color: Colors.white,
                  letterSpacing: 3,
                  wordSpacing: 4,
                  fontFamily: 'font_one',
                  fontWeight: FontWeight.w700,
                  fontSize: 17),
            ),
            centerTitle: true,
          ),
          toolbarHeight: 175,
        ),
        body: Center(
            child: ListView.builder(
                itemCount: allBooks.length,
                itemBuilder: (BuildContext, int index) => BookItem(
                      listedBook: allBooks[index],
                    ))));
  }

  List<Book> prepareData() {
    List<Book> tentativeList = [];
    for (int i = 0; i < 10; i++) {
      var bookName = Strings.Books_Name[i];
      var bookAuthor = Strings.Books_Authors[i];
      var bookDetail = Strings.Books_Detail[i];
      var smallImage = Strings.Small_Images[i];
      var bigImage = Strings.Big_Images[i];
      Book addBook =
          Book(bookName, bookAuthor, bookDetail, smallImage, bigImage);
      tentativeList.add(addBook);
    }
    return tentativeList;
  }
}
