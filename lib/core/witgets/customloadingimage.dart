import 'package:flutter/material.dart';

class CustomLoadingImage extends StatelessWidget {
  const CustomLoadingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
       aspectRatio: 7/2,
      child: Center(child: CircularProgressIndicator(),));
  }
}