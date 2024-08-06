import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final List<Widget> children;
  final String image;
  const Background({Key? key, required this.children, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(image),
        ...children
      ]
    );
  }
}
