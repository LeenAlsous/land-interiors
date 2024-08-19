import 'package:land_interiors/features/main_view/blogs/model/blog_model.dart';

class BlogsController {
  static List<BlogModel> blogs = [
    const BlogModel(
        image: 'assets/blog1.png',
        title: 'Modern Interior',
        body:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam,'),
    const BlogModel(
        image: 'assets/blog2.png',
        title: 'Exterior Project',
        body:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam,'),
    const BlogModel(
        image: 'assets/blog3.png',
        title: 'Grey Beauty',
        body:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam,'),
    const BlogModel(
        image: 'assets/blog4.png',
        title: 'Plantation interior',
        body:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam,'),
    const BlogModel(
        image: 'assets/blog5.png',
        title: 'Role of furniture',
        body:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam,')
  ];
}
