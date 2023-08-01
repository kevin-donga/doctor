import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color_res.dart';
import 'all_article_controller.dart';
import 'all_article_widget.dart';

class AllArticles extends StatelessWidget {
  const AllArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Get.height;
    double w = Get.width;
    Get.put(AllArticlesController());
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      appBar: appbar(),
      body: ListView(
        children:[ Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: h * 0.075,
                width: w,
                child: allAtriclesTab(),
              ),
              SizedBox(
                height: h,
                width: w,
                child: allArticlesList(),
              ),
              // allArticlesList(),
            ],
          ),
        ),],
      ),
    );
  }
}
