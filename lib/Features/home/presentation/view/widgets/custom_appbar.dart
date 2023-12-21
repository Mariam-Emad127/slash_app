import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:slash_product/core/utils/style.dart';

class CustomAppBar extends StatelessWidget {
    CustomAppBar({super.key, required this.title, this.onPressed, required this.icon});
final String title;
final Icon icon;
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[

               IconButton(
              onPressed: () {
              
              },
              icon:icon ),
           Center(
              child: Text(
            title,
            style: Style.textStyle35,
          )
          
          )
          
          ]);
  }
}