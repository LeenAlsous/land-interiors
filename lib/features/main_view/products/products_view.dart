import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/features/widgets/primary_button.dart';
import 'package:land_interiors/helper/responsive.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return Padding(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * .05),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: isMobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          Text('Our interior design projects', style: TextStyle(color: Color(AppColors.appBlack), fontWeight: FontWeight.w600),),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.04,),
          Row(
            children: [
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(child: Image.asset('assets/product1.png')),
                    Flexible(child: Image.asset('assets/product2.png')),
                  ],
                ),
              ),
              Flexible(flex: 2, child: Image.asset('assets/product3.png')),
              if (!isMobile)
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(child: Image.asset('assets/product4.png')),
                      Flexible(child: Image.asset('assets/product5.png')),
                    ],
                  ),
                ),
              if (!isMobile)
                Flexible(flex: 2, child: Image.asset('assets/product6.png'))
            ],
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
          Text(
            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, 
purus sit amet luctus venenatis, lectus magna fringilla urna,
porttitor rhoncus dolor purus non enim''',
            textAlign: isMobile ? TextAlign.start : TextAlign.center,
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.04,),
          Align(alignment: Alignment.center, child: PrimaryButton(text: 'View all', onPressed: (){},))
        ],
      ),
    );
  }
}
