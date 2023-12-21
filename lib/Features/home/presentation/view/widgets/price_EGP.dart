import 'package:flutter/material.dart';
import 'package:slash_product/Features/home/data/model/product_model/product_model.dart';
import 'package:slash_product/core/utils/style.dart';

class PriceEGP extends StatelessWidget {
    PriceEGP({super.key, required this.productModel});
final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Row(children: [Text("EGP", style: Style.textStyle18),
                SizedBox(
                  width: 2,
                ),
                Text("${productModel.productVariations!.first.price ?? 0} "  , style: Style.textStyle18),
                SizedBox(
                  width: 3,
                ),],);
  }
}