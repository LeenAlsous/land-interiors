import 'package:flutter/material.dart';
import 'package:land_interiors/features/main_view/benefits/benefits_view.dart';
import 'package:land_interiors/features/main_view/header/header_view.dart';
import 'package:land_interiors/features/widgets/app_bar_container.dart';
import 'package:land_interiors/features/widgets/background.dart';
import 'package:land_interiors/helper/responsive.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    bool isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const ContainerAppBar(),
          Padding(
            padding: EdgeInsets.only(top: isMobile ? 0 : 30.0),
            child: const HeaderView(),
          ),
          SizedBox(
            height: isDesktop
                ? MediaQuery.sizeOf(context).height * 0.15
                : MediaQuery.sizeOf(context).height * 0.06,
          ),
          const BenefitsView(),
          const Background(
              image: 'assets/background1.png',
              child: Column(
                children: [],
              )),
        ],
      ),
    );
  }
}
