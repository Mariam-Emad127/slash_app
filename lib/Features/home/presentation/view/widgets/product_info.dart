import 'package:flutter/material.dart';
import 'package:slash_product/Features/home/data/model/product_model/product_model.dart';
 import 'package:slash_product/Features/home/presentation/view/widgets/custom_image.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/product_name.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/product_price.dart';

class ProductInfo extends StatelessWidget {
  ProductInfo({super.key, required this.productModel});
  ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            Container(
              height: 170,
              width: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: CustomImage(
                  imheight: 140,
                  imwidth: 170,
                  border: 20,
                  image: productModel.productVariations![0]
                          ?.productVarientImages?[0].imagePath ??
                      ""),
            ),
            SizedBox(
              height: 20,
            ),
            ProductName(
              productModel: productModel,
              siWidth: 130,
              imheight: 30,
              imwidth: 30,
            ),
            ProductPrice(
              productModel: productModel,
            )
          ],
        ));
  }
}
