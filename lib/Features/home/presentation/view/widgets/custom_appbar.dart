import 'package:flutter/material.dart';
import 'package:slash_product/core/utils/style.dart';

class CustomAppBar extends StatelessWidget {
    CustomAppBar({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[

               IconButton(
              onPressed: () {
              
              },
              icon: const Icon(
               Icons.arrow_back,
                size: 35,
                color: Colors.white,
              )),
           Center(
              child: Text(
            title,
            style: Style.textStyle35,
          )
          
          )
          
          ]);
  }
}