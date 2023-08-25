import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImageBuilder extends StatelessWidget {
  const CustomImageBuilder({super.key, required this.imageurl});
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: AspectRatio(
            aspectRatio: 2 / 3,
            child: CachedNetworkImage(
              errorWidget: (context, url, error) => const Icon(Icons.image_not_supported_outlined)
              ,fit: BoxFit.fill, imageUrl: imageurl)),
      ),
    );
  }
}
