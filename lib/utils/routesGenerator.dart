
import 'package:flutter/material.dart';
import 'package:pocket_books/bookDetail.dart';
import 'package:pocket_books/bookItem.dart';
import 'package:pocket_books/bookList.dart';
import 'package:pocket_books/modal/book.dart';
import 'package:pocket_books/splashScreen.dart';
import 'package:pocket_books/utils/routesName.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RouteName.bookList:
        return MaterialPageRoute(builder: (context) => BookList());
      case RouteName.bookItem:
        return MaterialPageRoute(
            builder: (context) =>
                BookItem(listedBook: settings.arguments as Book));
      case RouteName.bookDetail:
        return MaterialPageRoute(
            builder: (context) =>
                BookDetail(selectedBook: settings.arguments as Book));
      default:
        return MaterialPageRoute(
            builder: (context) => MaterialApp(
                  home: Scaffold(
                      body: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      const Color.fromARGB(255, 0, 18, 33),
                      Colors.black,
                      const Color.fromARGB(255, 3, 13, 21)
                    ])),
                    child: Center(
                      child: Text(
                        "Page Can't be Loaded",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 100),
                      ),
                    ),
                  )),
                ));
    }
  }
}
