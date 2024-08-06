import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/helper/responsive.dart';

class ContainerAppBar extends StatelessWidget {
  const ContainerAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    return Container(
      decoration: BoxDecoration(color: Color(AppColors.offWhite)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/artboard.png',
                  height: MediaQuery.sizeOf(context).height * 0.1,
                ),
                if (isDesktop)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          'Join as designer expert',
                          style: TextStyle(color: Color(AppColors.appPurple)),
                        ),
                      ),
                      Text(
                        'Partner with LAND interiors',
                        style: TextStyle(color: Color(AppColors.appPurple)),
                      ),
                    ],
                  )
                else
                  const EndDrawerButton()
              ],
            ),
          ),
          if(isDesktop)Center(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width / 3,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('About'),
                  Text('Projects'),
                  Text('Studio'),
                  Text('Blog'),
                  Text('Contact')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
