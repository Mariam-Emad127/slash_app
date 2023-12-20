import 'package:flutter/material.dart';
import 'package:slash_product/Features/home/data/model/product_model/product_model.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/custom_image.dart';
import 'package:slash_product/core/utils/app_router.dart';
import 'package:slash_product/core/utils/style.dart';
import 'package:go_router/go_router.dart';
class ProductInfo extends StatelessWidget {
    ProductInfo({super.key,required this.productModel});
ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return
    Align(
        alignment: Alignment.centerLeft,
    child: Column(
      children: [
       
        GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kDetail);
      },
      child: Container(
        height: 170,

         width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), 
          ),
        child: CustomImage(imheight:140,imwidth:170 ,border: 20,image:productModel.productVariations![0]?.productVarientImages?.first.imagePath  ?? ""),
        ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(children: [
          Text(productModel.brands!.brandName ??"", style: Style.textStyle18),
          Text(
            "-",
            style: Style.textStyle18,
          ),
          Text(
            productModel.name ??"",
            style: Style.textStyle18,
          )
        ]),

        Row(
          children: [

            Align(
              alignment: Alignment.centerLeft,
              child: Text("Light", style: Style.textStyle18),
            ),
            SizedBox(width: 80,),
            Align(
              alignment: Alignment.centerRight,
              child: CustomImage(imheight:30,imwidth:30 ,border: 30,image: productModel.brands!.brandLogoImagePath ??""),),
          ],
        ),


        Row(
          children: [
            Text("EGP", style: Style.textStyle18),
            SizedBox(
              width: 2,
            ),
            //Text(productModel.productVariations[0].price  ?? "", style: Style.textStyle18),
            SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                )),
          ],
        )
      ],
      )  );
  }
}
