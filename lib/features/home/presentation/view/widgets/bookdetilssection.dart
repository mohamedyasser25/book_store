
import 'package:flutter/material.dart';

import '../../../../../constance.dart';
import '../../../../../core/utliz/stayles.dart';
import '../../../data/model/book_model/book_model.dart';
import 'booddetailsbodyactionbutton.dart';
import 'bookrating.dart';
import 'customimagebuilder.dart';

class BookDetilesSection extends StatelessWidget {
  const BookDetilesSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.32),
          child: CustomImageBuilder(
              imageurl: book.volumeInfo.imageLinks?.thumbnail??""),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          book.volumeInfo.title as String,
          style: Styles.textStyle28,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          getauthors(book.volumeInfo.authors!),
          style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              color: Colors.white.withOpacity(0.7)),
        ),
        const SizedBox(
          height: 12,
        ),
        BookRating(
            count: book.volumeInfo.ratingcount ?? 0,
            rating: book.volumeInfo.rating ?? 0),
        const SizedBox(
          height: 15,
        ),
         BookActionButton(book: book),
      ],
    );
  }
}
