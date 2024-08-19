import 'package:flutter/material.dart';

class SocialsContainer extends StatelessWidget {
  final String image;
  const SocialsContainer({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(color: const Color(0xfFFE5E5E5).withOpacity(0.8),borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(image),
      ),
    );
  }
}
