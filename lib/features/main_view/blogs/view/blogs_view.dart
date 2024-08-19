import 'package:flutter/material.dart';
import 'package:land_interiors/constants/app_colors.dart';
import 'package:land_interiors/features/main_view/blogs/controller/blogs_controller.dart';
import 'package:land_interiors/features/main_view/blogs/model/blog_model.dart';
import 'package:land_interiors/features/widgets/primary_button.dart';
import 'package:land_interiors/helper/responsive.dart';

class BlogsView extends StatelessWidget {
  const BlogsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BlogModel> blogsSection = BlogsController.blogs;
    bool isMobile = Responsive.isMobile(context);
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * .05),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Blogs', style: TextStyle(color: Color(AppColors.appBlack), fontWeight: FontWeight.w600),),
              Padding(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).width * .03),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int index = 0; index < blogsSection.length; ++index)
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(blogsSection[index].image,
                                    fit: BoxFit.fill,
                                    height: MediaQuery.sizeOf(context).height * 0.4, width: isMobile ? MediaQuery.sizeOf(context).width * 0.4 : MediaQuery.sizeOf(context).width * 0.18,),
                              ),
                              Text(
                                blogsSection[index].title,
                                style: const TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                  width: isMobile ? MediaQuery.sizeOf(context).width * 0.3 : MediaQuery.sizeOf(context).width * 0.15,
                                  child: Text(blogsSection[index].body))
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              ),
              Align(alignment: Alignment.center, child: PrimaryButton(text: 'View all', onPressed: (){},))
            ],
          ),
          Positioned(
              right: 0,
              top: MediaQuery.sizeOf(context).height * 0.2,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF).withOpacity(0.8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(AppColors.appPurple),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
