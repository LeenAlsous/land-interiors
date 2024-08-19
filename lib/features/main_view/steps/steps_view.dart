import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/helper/responsive.dart';

class StepsView extends StatelessWidget {
  const StepsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Stack(alignment: AlignmentDirectional.topEnd, children: [
        Image.asset(
          'assets/steps.png',
          width: isMobile
              ? MediaQuery.sizeOf(context).width
              : MediaQuery.sizeOf(context).width * 0.73,
          height: MediaQuery.sizeOf(context).height * 0.95,
          fit: BoxFit.fill,
        ),
        Positioned(
          left: 0,
          top: MediaQuery.sizeOf(context).height * 0.06,
          bottom: MediaQuery.sizeOf(context).height * 0.06,
          child: Image.asset(
            'assets/steps2.png',
            width: isMobile ? MediaQuery.sizeOf(context).width * 2 / 3 : null,
            height: isMobile
                ? MediaQuery.sizeOf(context).height
                : MediaQuery.sizeOf(context).height * 0.9,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: isMobile
              ? MediaQuery.sizeOf(context).width * 0.05
              : MediaQuery.sizeOf(context).width * 0.1,
          //right: MediaQuery.sizeOf(context).width * 0.03,
          top: MediaQuery.sizeOf(context).height * 0.13,
          bottom: MediaQuery.sizeOf(context).height * 0.06,
          child: Column(
            crossAxisAlignment:
                isMobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
            children: [
              Text(
                'Make your dream interior in',
                style: TextStyle(color: Color(AppColors.appBlack), fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  '3 easy steps',
                  style: TextStyle(color: Color(AppColors.appBlack), fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'Explore',
                style: TextStyle(color: Color(AppColors.appPurple), fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Explore more than just modular design \nideas with our experts.',
                  textAlign: isMobile ? TextAlign.start : TextAlign.center,
                ),
              ),
              Text(
                'Design',
                style: TextStyle(color: Color(AppColors.appPurple), fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Complete the designs with painting, flooring \nand other decor solutions',
                  textAlign: isMobile ? TextAlign.start : TextAlign.center,
                ),
              ),
              Text(
                'Move-in',
                style: TextStyle(color: Color(AppColors.appPurple), fontWeight: FontWeight.w700),
              ),
              Text(
                'Move in with ease, with our hassle-free civil work \nand installation services.',
                textAlign: isMobile ? TextAlign.start : TextAlign.center,
              )
            ],
          ),
        )
      ]),
    );
  }
}
