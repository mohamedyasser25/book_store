import 'package:flutter/material.dart';

import '../../../../../core/utliz/assets.dart';

class Logoanimated extends StatelessWidget {
  const Logoanimated({
    super.key,
    required this.slideanimation2,
  });

  final Animation<Offset> slideanimation2;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideanimation2,
        builder: (context, _) {
          return SlideTransition(
              position: slideanimation2,
              child: Hero(
                  transitionOnUserGestures: true,
                  tag: "Logo",
                  child: Image.asset(Assets.imagesLogo)));
        });
  }
}
