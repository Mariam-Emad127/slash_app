import 'package:flutter/material.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/product_info.dart';

class GridViewData  extends StatelessWidget {
  const GridViewData ({super.key});

  @override
  Widget build(BuildContext context) {
    return    Expanded(
                  child: GridView.builder(
                      itemCount: 6,
                      clipBehavior: Clip.none,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          childAspectRatio: 2 / 4,
                          mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        //return ProductInfo(productModel:,);
                        //);
                      }
                      // ],

                      ),
                );
  }
}