import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcon extends StatelessWidget {
  final String image;
  final String subtitle;
  const CustomIcon({Key? key, required this.image, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(image,
            width: MediaQuery.sizeOf(context).height * 0.05,
            height: MediaQuery.sizeOf(context).height * 0.05),
        const SizedBox(height: 15),
        Text(
          subtitle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
