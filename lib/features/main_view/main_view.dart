import 'package:flutter/material.dart';
import 'package:land_interiors/features/footer/footer_view_mobile.dart';
import 'package:land_interiors/features/footer/footer_view_web.dart';
import 'package:land_interiors/features/main_view/benefits/benefits_view.dart';
import 'package:land_interiors/features/main_view/blogs/view/blogs_view.dart';
import 'package:land_interiors/features/main_view/customers_reviews/customers_reviews_view.dart';
import 'package:land_interiors/features/main_view/form/form_view.dart';
import 'package:land_interiors/features/main_view/products/products_view.dart';
import 'package:land_interiors/features/main_view/projects/projects_view_mobile.dart';
import 'package:land_interiors/features/main_view/projects/projects_view_web.dart';
import 'package:land_interiors/features/main_view/steps/steps_view.dart';
import 'package:land_interiors/features/main_view/what_we_do/what_we_do_view.dart';
import 'package:land_interiors/features/widgets/app_bar_container.dart';
import 'package:land_interiors/features/widgets/background.dart';
import 'package:land_interiors/helper/responsive.dart';

import 'hero/hero_view.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    bool isDesktop = Responsive.isDesktop(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column( children: [
            const ContainerAppBar(),
            Padding(
              padding: EdgeInsets.only(top: isMobile ? 0 : 30.0),
              child: const HeroView(),
            ),
            SizedBox(
              height: isDesktop
                  ? MediaQuery.sizeOf(context).height * 0.15
                  : MediaQuery.sizeOf(context).height * 0.06,
            ),
            Background(
              image: 'assets/background1.png',
              children: [
                Column(
                  children: [
                    const BenefitsView(),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.08,
                    ),
                    const StepsView(),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.08,
                    ),
                    const WhatWeDoView()
                  ],
                )
              ],
            ),
            Background(image: 'assets/background2.png', children: [
              //BlogsView()
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.1,
                  ),
                  !isDesktop
                      ? const ProjectsViewMobile()
                      : const ProjectsViewWeb(),
                  const BlogsView(),
                  const ProductsView()
                ],
              )
            ]),
            const CustomersReviewsView(),
            const FormView(),
            isMobile ? const FooterViewMobile() : const FooterViewWeb()
          ]),
        ));
  }
}
