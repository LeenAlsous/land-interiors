import 'package:flutter/material.dart';

class Responsive{
  static bool isDesktop(BuildContext context) => MediaQuery.sizeOf(context).width >= 1000;
  static bool isTablet(BuildContext context) => MediaQuery.sizeOf(context).width < 1000 && MediaQuery.sizeOf(context).width >= 710;
  static bool isMobile(BuildContext context) => MediaQuery.sizeOf(context).width < 710;
}