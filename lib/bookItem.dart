import 'package:flutter/material.dart';
import 'package:pocket_books/bookDetail.dart';
import 'package:pocket_books/modal/book.dart';

class BookItem extends StatelessWidget {
  final Book listedBook;

  BookItem({required this.listedBook, Key? key});

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 5,
      shadowColor: Color.fromARGB(255, 255, 242, 199),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.all(0),
        height: 95,
        child: ListTile(
          horizontalTitleGap: 15,
          contentPadding: EdgeInsets.fromLTRB(4, 2, 10, 2),
          leading: Image.asset(
            'assets/images/' + listedBook.smallImage,
            width: 75,
            height: 75,
          ),
          tileColor: Color.fromARGB(255, 244, 246, 248),
          title: Text(
            listedBook.bookName,
            style: textStyle.titleMedium,
          ),
          subtitle: Text(
            listedBook.bookAuthor,
            style: textStyle.labelSmall,
          ),
          trailing: Icon(
            weight: 50,
            Icons.chevron_right_rounded,
            size: 30,
            color: Color.fromARGB(255, 211, 162, 0),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BookDetail(selectedBook: listedBook)));
            //BookDetail(selectedBook: listedBook);
            print('${listedBook.bookName} by ${listedBook.bookAuthor}');
          },
        ),
      ),
    );
  }
}
