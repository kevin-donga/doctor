import 'package:doctor/common_widget/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/color_res.dart';
import '../../../../utils/string_res.dart';
import '../../article_screen_controller.dart';
import 'allArticle_describe_widget_screen.dart';

class DescribeAllArticles extends StatelessWidget {
  DescribeAllArticles({Key? key}) : super(key: key);

  ArticleController articlesController = Get.put(ArticleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      appBar: describeArticleAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: h * 0.3,
                width: w,
                decoration: BoxDecoration(
                  // color: Colors.orange,
                  borderRadius: BorderRadius.circular(h * 0.04),
                  image: DecorationImage(
                      image: AssetImage(articlesController
                              .articleData[articlesController.selectedIndex]
                          ["cover"]),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: h * 0.02),
              commonText(
                data: articlesController
                    .articleData[articlesController.selectedIndex]['headLine'],
                fontWeight: FontWeight.bold,
                fontSize: h * 0.022,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: h * 0.02),
              Row(
                children: [
                  commonText(
                    data: articlesController
                        .articleData[articlesController.selectedIndex]['date'],
                    fontSize: h * 0.015,
                  ),
                  SizedBox(
                    width: w * 0.04,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffE3EDFB),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: commonText(
                        data: articlesController
                                .articleData[articlesController.selectedIndex]
                            ['label'],
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: h * 0.02),
              Divider(height: h * 0.01),
              SizedBox(height: h * 0.02),
              commonText(
                  data: articlesController
                          .articleData[articlesController.selectedIndex]
                      ['description'],
                  fontFamily: StringRes.josefinSans,
                  fontWeight: FontWeight.bold),
            ],
          ),
        ),
      ),
    );
  }
}
