import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/features/widgets/primary_button.dart';
import 'package:land_interiors/helper/responsive.dart';

class FormView extends StatelessWidget {
  const FormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return Padding(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Lets talk about your dream home', style: TextStyle(color: Color(AppColors.appBlack), fontWeight: FontWeight.w600),),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.04,),
          Flex(
            direction: isMobile ? Axis.vertical :  Axis.horizontal,
            children: [
              SizedBox(width: isMobile ? MediaQuery.sizeOf(context).width : MediaQuery.sizeOf(context).width * 0.3, child: TextFormField(decoration: const InputDecoration(hintText: 'Name'))),
              SizedBox(width: MediaQuery.sizeOf(context).width * 0.04,),
              SizedBox(width: isMobile ? MediaQuery.sizeOf(context).width : MediaQuery.sizeOf(context).width * 0.3, child: TextFormField(decoration: const InputDecoration(hintText: 'Phone/Email'))),
              SizedBox(width: MediaQuery.sizeOf(context).width * 0.04,),
              PrimaryButton(text: 'Send', onPressed: (){},)
            ],
          ),
        ],
      ),
    );
  }
}
