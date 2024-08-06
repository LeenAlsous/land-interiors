import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String image;
  const Background({Key? key, required this.child, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.fill,
      ),
    ),
      child: SizedBox(width: MediaQuery.sizeOf(context).width, child: child),
    );
  }
}
