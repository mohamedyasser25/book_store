import 'package:flutter/material.dart';

import '../../data/model/book_model/book_model.dart';
import 'widgets/bookdetilsviewbody.dart';

class BookDetils extends StatelessWidget {
  const BookDetils({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetilsViewBody(book: book,)),
    );
  }
}
