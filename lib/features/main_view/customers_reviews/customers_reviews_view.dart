import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/helper/responsive.dart';

class CustomersReviewsView extends StatelessWidget {
  const CustomersReviewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return Padding(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.05),
      child: Column(
        crossAxisAlignment:
            isMobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          Text(
            'Our happy customers',
            style: TextStyle(
                color: Color(AppColors.appBlack), fontWeight: FontWeight.w600),
          ),
          Text(
            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet 
luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim''',
            textAlign: isMobile ? TextAlign.start : TextAlign.center,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/customer_bg1.png',
                    width: isMobile
                        ? MediaQuery.sizeOf(context).width * 0.9
                        : MediaQuery.sizeOf(context).width * 0.7,
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/customer_bg2.jpeg',
                    width: isMobile
                        ? MediaQuery.sizeOf(context).width * 0.9
                        : MediaQuery.sizeOf(context).width * 0.7,
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/customer_bg1.png',
                    width:  isMobile
                        ? MediaQuery.sizeOf(context).width * 0.9
                        : MediaQuery.sizeOf(context).width * 0.7,
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
