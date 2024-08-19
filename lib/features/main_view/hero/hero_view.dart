import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/features/widgets/primary_button.dart';
import 'package:land_interiors/helper/responsive.dart';

class HeroView extends StatelessWidget {
  const HeroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          //alignment: AlignmentDirectional.topStart,
          children: [
            Image.asset(
              'assets/hero.png',
              width: !isDesktop
                  ? MediaQuery.sizeOf(context).width
                  : MediaQuery.sizeOf(context).width * 0.57,
              height: MediaQuery.sizeOf(context).height * 0.63,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: !isDesktop ? 0 : constraints.maxWidth * 0.05,
              top: !isDesktop ? null : constraints.maxWidth * 0.05,
              left: !isDesktop
                  ? constraints.maxWidth * 0.04
                  : constraints.maxWidth * 0.49,
              right: !isDesktop ? constraints.maxWidth * 0.04 : null,
              // 0.04
              child: Stack(
                //alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                    'assets/hero2.png',
                    height:
                        !isDesktop ? MediaQuery.sizeOf(context).height / 5 : MediaQuery.sizeOf(context).height * 0.5,
                    width:
                        !isDesktop ? MediaQuery.sizeOf(context).width : null,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    bottom: !isDesktop ? 0 : constraints.maxWidth * 0.05,
                    right: constraints.maxWidth * 0.12,
                    left: !isDesktop ? constraints.maxWidth * 0.09 : constraints.maxWidth * 0.01,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Get personalised home interiors',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'in just 50 days',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(AppColors.appBlack)),
                        ),
                        Flexible(
                          child: PrimaryButton(
                            text: 'SPEAK WITH AN ONLINE CONSULTANT',
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
