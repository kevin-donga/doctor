import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common_widget/common_text.dart';
import '../../../../utils/color_res.dart';
import '../../../../utils/string_res.dart';
import '../../article_screen_controller.dart';

double h = Get.height;
double w = Get.width;

AppBar describeArticleAppbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: ColorRes.scaffoldColor,
    foregroundColor: Colors.black,
    actions: [
      GetBuilder<ArticleController>(builder: (controller) {
        return IconButton(
          onPressed: () => controller.bookmarkOnTap(controller.selectedIndex),
          icon: Icon(controller.bookmarkArticle.contains(
                  controller.articleData[controller.selectedIndex].toString())
              ? Icons.bookmark_add
              : Icons.bookmark_add_outlined),
        );
      }),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.send),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_horiz),
      ),
    ],
  );
}
