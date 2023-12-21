import 'package:flutter/material.dart';
import 'package:slash_product/Features/home/data/model/product_model/product_model.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/custom_icon.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/price_EGP.dart';
 
class ProductPrice extends StatelessWidget {
    ProductPrice({super.key, required this.productModel});
final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return    Row(
              children: [
                PriceEGP(productModel: productModel,),
               CustomIcon(icon: Icon(
                     Icons.favorite_border,
                      color: Colors.white,
                    ), onPressed: ( ){}),

                    CustomIcon(icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ), onPressed:  (){})
                 
              ],
            );
                 
  }
}