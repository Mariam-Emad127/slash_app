import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key,
      this.imheight,
      this.imwidth,
      required this.border,
      required this.image});
  final double? imheight;
  final double? imwidth;
  final double border;
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(border),
      child: CachedNetworkImage(
        imageUrl: image,
        height: imheight,
        width: imwidth,
        fit: BoxFit.cover,
      ),
    );
  }
}
