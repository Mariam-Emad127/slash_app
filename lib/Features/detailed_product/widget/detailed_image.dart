import 'package:flutter/material.dart';
import 'package:slash_product/Features/home/data/model/product_model/product_model.dart';
import '../../home/presentation/view/widgets/custom_image.dart';

class DetailedImage extends StatelessWidget {
  DetailedImage({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: 220,
        // decoration: BoxDecoration( border: Border.all(color: Colors.blueAccent,width: 3)  ),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent, width: 3)),
                  child: CustomImage(
                    imheight: 100,
                    imwidth: 100,
                    border: 5,
                    image: productModel.productVariations![0]
                            .productVarientImages?[index].imagePath ??
                        "",
                  ),
                ),
              );
            }));
  }
}
