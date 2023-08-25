import 'package:flutter/material.dart';

import '../../../../../core/utliz/stayles.dart';
import 'bookrating.dart';

class HomeViewBodyRating extends StatelessWidget {
  const HomeViewBodyRating({super.key, required this.rating, required this.count});
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Free",
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
         BookRating(count: count,rating: rating)
      ],
    );
  }
}
