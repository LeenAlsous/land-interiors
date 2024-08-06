import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/helper/responsive.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    void showDrawer() {}
    return AppBar(
      backgroundColor: Color(AppColors.offWhite),
      leading: Image.asset('assets/artboard.png'),
      actions: [
        if (isMobile)
          EndDrawerButton(onPressed: () {
            showDrawer();
          }),
      ],
    );
  }
}
