import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/helper/responsive.dart';

class StepsView extends StatelessWidget {
  const StepsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
          children: [
        Image.asset(
          'assets/steps.png',
          width: isMobile ? MediaQuery.sizeOf(context).width : MediaQuery.sizeOf(context).width * 0.73,
          height: MediaQuery.sizeOf(context).height * 0.95,
          fit: BoxFit.fill,
        ),
        Positioned(
          left: 0,
          top: MediaQuery.sizeOf(context).height * 0.06,
          bottom: MediaQuery.sizeOf(context).height * 0.06,
          child: SvgPicture.asset(
            'assets/steps2.svg',
            width: MediaQuery.sizeOf(context).width * 0.2,
            height: MediaQuery.sizeOf(context).height * 0.9,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: MediaQuery.sizeOf(context).width * 0.1,
          //right: MediaQuery.sizeOf(context).width * 0.03,
          top: MediaQuery.sizeOf(context).height * 0.13,
          bottom: MediaQuery.sizeOf(context).height * 0.06,
          child: Column(
            children: [
              Text(
                'Make your dream interior in',
                style: TextStyle(color: Color(AppColors.appBlack)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  '3 easy steps',
                  style: TextStyle(color: Color(AppColors.appBlack)),
                ),
              ),
              Text(
                'Explore',
                style: TextStyle(color: Color(AppColors.appPurple)),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'Explore more than just modular design \nideas with our experts.', textAlign: TextAlign.center,),
              ),
              Text(
                'Design',
                style: TextStyle(color: Color(AppColors.appPurple)),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'Complete the designs with painting, flooring \nand other decor solutions', textAlign: TextAlign.center,),
              ),
              Text(
                'Move-in',
                style: TextStyle(color: Color(AppColors.appPurple)),
              ),
              const Text(
                  'Move in with ease, with our hassle-free civil work \nand installation services.', textAlign: TextAlign.center,)
            ],
          ),
        )
      ]),
    );
  }
}
