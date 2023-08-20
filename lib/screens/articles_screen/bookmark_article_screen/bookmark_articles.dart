import 'package:doctor/common_widget/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/color_res.dart';
import '../article_screen_controller.dart';

class BookMarkArticles extends StatefulWidget {
  const BookMarkArticles({Key? key}) : super(key: key);

  @override
  State<BookMarkArticles> createState() => _BookMarkArticlesState();
}

class _BookMarkArticlesState extends State<BookMarkArticles> {
  ArticleController articlesController = Get.put(ArticleController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('bookmark list==========${articlesController.bookmarkArticle}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      body: articlesController.bookmarkArticle.isEmpty
          ? Center(
              child:
                  commonText(data: 'No Bookmark Data Found !!', fontSize: 20),
            )
          : GetBuilder<ArticleController>(builder: (controller) {
              return Column(children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.bookmarkArticle.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(controller.bookmarkArticle[index]['date']);
                    },
                  ),
                )
              ]);
            }),
    );
  }
}
