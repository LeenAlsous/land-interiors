import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/helper/responsive.dart';

class WhatWeDoView extends StatelessWidget {
  const WhatWeDoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return Column(
      crossAxisAlignment: isMobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'What we do?',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isMobile ? 2 : 4,
          ),
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Image.asset(
                      'assets/kitchen.png',
                      height: MediaQuery.sizeOf(context).height * 0.3,
                    ),
                  ),
                ),
                Text(
                  'Modular Kitchen',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(AppColors.appPurple)),
                ),
              ],
            ),
            Column(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Image.asset('assets/bedroom.png',
                        fit: BoxFit.fill,
                        height: MediaQuery.sizeOf(context).height * 0.3),
                  ),
                ),
                Text(
                  'Bedroom',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(AppColors.appPurple)),
                ),
              ],
            ),
            Column(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Image.asset('assets/living_room.png',
                        height: MediaQuery.sizeOf(context).height * 0.3),
                  ),
                ),
                Text(
                  'Living room',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(AppColors.appPurple)),
                ),
              ],
            ),
            Column(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Image.asset('assets/office.png',
                        height: MediaQuery.sizeOf(context).height * 0.3),
                  ),
                ),
                Text(
                  'Home office',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(AppColors.appPurple)),
                ),
              ],
            ),
          ],
        ),
        if (!isMobile)
          SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.75,
              child: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla',
                textAlign: TextAlign.center,
              ))
      ],
    );
  }
}
