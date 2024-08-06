import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final double? width;
  final double? height;

  const PrimaryButton(
      {Key? key, this.onPressed, required this.text, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(AppColors.appPurple),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero)),
          onPressed: onPressed,
          child: FittedBox(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}
