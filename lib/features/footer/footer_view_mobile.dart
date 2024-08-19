import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/features/footer/widgets/socials_container.dart';

class FooterViewMobile extends StatelessWidget {
  const FooterViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(AppColors.offWhite)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.03),
        child: Column(
          children: [
            Image.asset('assets/artboard.png'),
            const Text('landinteriors@gmail.com'),
            const Text('+91 98987 65656'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialsContainer(image: 'assets/facebook.png'),
                SocialsContainer(image: 'assets/instagram.png'),
                SocialsContainer(image: 'assets/linkedin.png'),
                SocialsContainer(image: 'assets/youtube.png'),
                SocialsContainer(image: 'assets/twitter.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
