import 'package:flutter/material.dart';

import '../../../../../core/functions/urllancher.dart';
import '../../../../../core/utliz/stayles.dart';
import '../../../../../core/witgets/custombutton.dart';
import '../../../data/model/book_model/book_model.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {},
              text: "Get It Now",
              backgroundcolor: Colors.white,
              textstyle: Styles.textStyle18.copyWith(color: Colors.black),
              borderredise: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                customlaunchurl(context,book.volumeInfo.infoLink!);
              },
              text: "Free preview",
              backgroundcolor: const Color(0xffEF8262),
              textstyle: Styles.textStyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w900),
              borderredise: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
          )
        ],
      ),
    );
  }
}
