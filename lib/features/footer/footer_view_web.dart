import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/features/footer/widgets/socials_container.dart';
import 'package:land_interiors/helper/responsive.dart';

class FooterViewWeb extends StatelessWidget {
  const FooterViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return Container(
      decoration: BoxDecoration(color: Color(AppColors.offWhite)),
      child: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.sizeOf(context).width * 0.05,
            top: MediaQuery.sizeOf(context).height * 0.03,
            bottom: MediaQuery.sizeOf(context).height * 0.03),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/artboard.png'),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.3,
                  child: const Text(
                      '''We introduce our selves as LAND Interior and Architectural Design Consultancy – one of the best interior designers in Chennai. Chennai Luxury Interior and Architectural Design Consultancy has challenged the conventional way of interior designing and given new dimensions to the art of interior designing.'''),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.15,
                ),
                const Row(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What we do',
                  style: TextStyle(
                      color: Color(AppColors.darkGray),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.14,
                ),
                const Text('Interior design'),
                const Text('kitchen'),
                const Text('ceiling'),
                const Text('bedroom'),
                const Text('smart home'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Get in touch',
                  style: TextStyle(
                      color: Color(AppColors.darkGray),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.14,
                ),
                const Text('landinteriors@gmail.com'),
                const Text('+91 98987 65656'),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.2,),
                if(!isMobile) SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.3,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('About'),
                      Text('Projects'),
                      Text('Studio'),
                      Text('Blog'),
                      Text('Contact'),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
