import "package:flutter/material.dart";

class Textanimated extends StatelessWidget {
  const Textanimated({
    super.key,
    required this.slideanimation1,
  });

  final Animation<Offset> slideanimation1;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideanimation1,
        builder: (context, _) {
          return SlideTransition(
            position: slideanimation1,
            child: const Text(
              "For Readers",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: "GT"),
            ),
          );
        });
  }
}
