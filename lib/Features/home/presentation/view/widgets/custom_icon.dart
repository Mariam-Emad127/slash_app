import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
    CustomIcon({super.key, required this.icon, required this.onPressed});
final Icon icon;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  IconButton(
                    onPressed: onPressed,
                    icon: icon );
  }
}