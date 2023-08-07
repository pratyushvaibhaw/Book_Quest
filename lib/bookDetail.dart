import 'package:flutter/material.dart';
import 'package:pocket_books/modal/book.dart';

class BookDetail extends StatefulWidget {
  final Book selectedBook;
  BookDetail({required this.selectedBook});

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 255, 250, 216),
          Colors.white,
          Colors.white,
          Color.fromARGB(255, 255, 240, 220)
        ])),
        child: CustomScrollView(
          slivers: [
            appBar(),
            SliverToBoxAdapter(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  widget.selectedBook.bookDetail,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }

  SliverAppBar appBar() {
    return SliverAppBar(
      elevation: 10,
      pinned: true,
      floating: true,
      snap: true,
      stretch: true,
      expandedHeight: 300,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          widget.selectedBook.bookName,
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        titlePadding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
        background: Image.asset(
          'assets/images/' + widget.selectedBook.bigImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
