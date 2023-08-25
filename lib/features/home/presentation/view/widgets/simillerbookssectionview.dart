import 'package:flutter/material.dart';

import '../../../../../core/utliz/stayles.dart';
import 'bookdetilsviewbodysimillerbooks.dart';

class SimillerBooksSection extends StatelessWidget {
  const SimillerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              "You can see also :",
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const SimillerBookView(),
          const SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
