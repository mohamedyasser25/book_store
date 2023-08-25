import 'package:flutter/material.dart';

import '../../../../../constance.dart';
import '../../../../../core/utliz/stayles.dart';

class BookTexts extends StatelessWidget {
  final List<String> auther;
  final String title;

  const BookTexts({super.key, required this.auther, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.5,
          child: Text(
            title,
            style: Styles.textStyle20.copyWith(fontFamily: Gtfamilyfont),
            maxLines: 2,
            overflow: TextOverflow.fade,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.5,
          child: Text(
            getauthors(auther),
            style: Styles.textStyle14,
            maxLines: 1,
            overflow: TextOverflow.fade,
          ),
        ),
      ],
    );
  }
}
