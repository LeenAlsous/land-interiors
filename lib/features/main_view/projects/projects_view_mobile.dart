import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/features/widgets/primary_button.dart';

class ProjectsViewMobile extends StatelessWidget {
  const ProjectsViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '  Our projects',
          style: TextStyle(
              color: Color(AppColors.appBlack),
              fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: 2,
                  child: Image.asset('assets/project1.png',
                      width: MediaQuery.sizeOf(context).width * 0.2),
                ),
                Flexible(
                  child: Image.asset('assets/project2.png',
                      width: MediaQuery.sizeOf(context).width * 0.2),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Image.asset('assets/project3.png',
                      width: MediaQuery.sizeOf(context).width * 0.2),
                ),
                Flexible(
                  flex: 2,
                  child: Image.asset('assets/project4.png',
                      width: MediaQuery.sizeOf(context).width * 0.2),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.9,
          child: const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla',
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.9,
          child: const Text(
            ' magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla',
          ),
        ),
        PrimaryButton(text: 'View all', onPressed: (){},)
      ],
    );
  }
}
