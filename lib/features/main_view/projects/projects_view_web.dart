import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/features/widgets/primary_button.dart';
import 'package:land_interiors/helper/responsive.dart';

class ProjectsViewWeb extends StatelessWidget {
  const ProjectsViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * .05),
      child: Stack(
        children: [
          Row(
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
              )
            ],
          ),
          Positioned(
              top: MediaQuery.sizeOf(context).height * 0.03,
              bottom: MediaQuery.sizeOf(context).height * 0.03,
              right: MediaQuery.sizeOf(context).width * 0.01,
              child: Image.asset(
                'assets/transparent_project.png',
                height: MediaQuery.sizeOf(context).height * 0.5,
                width: MediaQuery.sizeOf(context).width * 0.52,
                fit: BoxFit.fill,
              )),
          Positioned(
            top: !isDesktop ? MediaQuery.sizeOf(context).height * 0.05 : MediaQuery.sizeOf(context).height * 0.1,
            bottom: !isDesktop ? MediaQuery.sizeOf(context).height * 0.05 : MediaQuery.sizeOf(context).height * 0.1,
            right: MediaQuery.sizeOf(context).width * 0.02,
            child: Column(
              children: [
                Text(
                  '  Our projects',
                  style: TextStyle(
                      color: Color(AppColors.appBlack),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: const Text(
                    ' magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla',
                    textAlign: TextAlign.center,
                  ),
                ),
                PrimaryButton(text: 'View all', onPressed: (){},)
              ],
            ),
          )
        ],
      ),
    );
  }
}
