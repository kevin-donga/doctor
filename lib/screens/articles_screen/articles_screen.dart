import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color_res.dart';
import 'article_screen_controller.dart';
import 'article_screen_widget.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Get.height;
    double w = Get.width;
    Get.put(ArticleController());
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.04,
              ),
              articlesAppbar(),
              SizedBox(
                height: h * 0.03,
              ),
              trendingRowHeadline(),
              SizedBox(
                height: Get.height * 0.03,
              ),
              SizedBox(
                height: h * 0.28,
                child: trendingArticles(),
              ),
              articlesHeadingRow(),
              SizedBox(
                height: Get.height * 0.01,
              ),
              SizedBox(
                height: h * 0.075,
                width: w,
                child: atriclesTab(),
              ),
              SizedBox(
                height: h,
                width: w,
                child: articlesList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
