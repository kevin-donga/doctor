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
      PopupMenuButton(onSelected: (value) {
        // your logic
        // setState(() {
        //   selectedItem = value.toString();
        // });
        print(value);
        //Navigator.pushNamed(context, value.toString());
      }, itemBuilder: (BuildContext bc) {
        return const [
          PopupMenuItem(
            child: Text("Rate Us!"),
            value: '/hello',
          ),
          PopupMenuItem(
            child: Text("About"),
            value: '/about',
          ),
          PopupMenuItem(
            child: Text("Contact"),
            value: '/contact',
          )
        ];
      })
    ],
  );
}
