import 'package:flutter/material.dart';
import 'package:slash_product/Features/home/data/model/product_model/product_model.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/custom_image.dart';
import 'package:slash_product/core/utils/style.dart';

class ProductName extends StatelessWidget {
    ProductName({super.key, required this.productModel, required this.siWidth, required this.imheight, required this.imwidth});
final ProductModel productModel;
final double siWidth;
  final double imheight;
       final double     imwidth;
  @override
  Widget build(BuildContext context) {
    return  Row(
              children: [
                SizedBox(
                  width: siWidth,
                  child: Text(
                    "${productModel.brands!.brandName ?? ""} - ${productModel.name ?? ""}  ",
                    softWrap: true,
                    style: Style.textStyle18,
                  ),
                ),
               CustomImage(
                      imheight: imheight,
                      imwidth: imheight,
                      border: 30,
                      image: productModel.brands!.brandLogoImagePath ?? ""),
                
              ],
            );
  }
}