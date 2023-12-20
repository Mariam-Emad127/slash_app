import 'package:flutter/material.dart';

import '../../home/presentation/view/widgets/custom_image.dart';

class DetailedImage extends StatelessWidget {
  const DetailedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return         Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent,width: 3)
        ), child: CustomImage(imheight: 100,imwidth:100,border: 5,image: "assets/mm.jpg",));
  }
}
