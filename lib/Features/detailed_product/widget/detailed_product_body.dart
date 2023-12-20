import 'package:flutter/material.dart';
import 'package:slash_product/Features/detailed_product/widget/detailed_image.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/custom_image.dart';
import 'package:slash_product/core/utils/style.dart';

class DetailedProductBody extends StatelessWidget {
  const DetailedProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: "Product Details",
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: CustomImage(
                imheight: 300, imwidth: 300, border: 20, image: "assets/mm.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DetailedImage(),
                SizedBox(
                  width: 10,
                ),
                DetailedImage()
              ],
            ),
          ),
      SizedBox(height: 50,),
          Row(children: [
            Column(children: [
              Text( "dddddd",style: Style.textStyle18,),
              SizedBox(height: 20,),
              Text( "dddddd",style: Style.textStyle18,),
      
      
      
      
      
            ],
            ),
            SizedBox(width: 200,),
            CustomImage(imheight: 70, imwidth: 70,border: 20, image:  "assets/logo.png")
      
      
      
      
          ],)
      
      
      
        ],
      ),
    );
  }
}
