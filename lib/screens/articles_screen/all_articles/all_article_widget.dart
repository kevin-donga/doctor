import 'package:doctor/screens/search&filter/search&filter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common_widget/common_container.dart';
import '../../../common_widget/common_text.dart';
import '../../../utils/color_res.dart';
import '../../../utils/icon_res.dart';
import '../../../utils/string_res.dart';
import '../article_screen_controller.dart';
import '../bookmark_article_screen/bookmark_articles.dart';

double h = Get.height;
double w = Get.width;

AppBar appbar() {
  return AppBar(
    backgroundColor: ColorRes.scaffoldColor,
    foregroundColor: Colors.black,
    title: commonText(
      data: StringRes.articleAppbarTitle,
      fontFamily: StringRes.josefinSansBold,
      fontWeight: FontWeight.bold,
    ),
    actions: [
      IconButton(
        onPressed: () => Get.to(() => const BookMarkArticles()),
        icon: const Icon(
          IconRes.bookmarkBorderIcon,
          color: ColorRes.blackColor,
        ),
      ),
      IconButton(
        onPressed: () {
          Get.to(() => const SearchAndFilter());
        },
        icon: const Icon(Icons.search),
      ),
      // IconButton(
      //   onPressed: () {},
      //   icon: const Icon(Icons.more_horiz),
      // ),
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

Widget allAtriclesTab() {
  return GetBuilder<ArticleController>(
    id: 'AllArticlesController',
    builder: (controller) {
      return ListView.builder(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.articlesTab.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            onTap: () => controller.articleTab(),
            child: commonContainer(
              height: 30,
              width: 90,
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(20),
                color: controller.articleTabIndex ? Colors.blue : Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: commonText(
                    data: controller.articlesTab[index],
                    fontWeight: FontWeight.bold,
                    color: controller.articleTabIndex
                        ? Colors.white
                        : Colors.blue),
              ),
            ),
          );
        },
      );
    },
  );
}

Widget allArticlesList() {
  return GetBuilder<ArticleController>(builder: (controller) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: controller.articleData.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            SizedBox(
              height: h * 0.17,
              width: w,
              child: InkWell(
                onTap: () => controller.articleOnTap(index),
                child: Row(
                  children: [
                    Container(
                      height: h * 0.17,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(
                              controller.articleData[index]['cover'],
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commonText(
                            data: controller.articleData[index]['date'],
                            fontSize: h * 0.015,
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          SizedBox(
                            width: w,
                            child: commonText(
                                data: controller.articleData[index]['headLine'],
                                fontWeight: FontWeight.bold,
                                fontSize: h * 0.022,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xffE3EDFB),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: commonText(
                                data: controller.articleData[index]['label'],
                                color: Colors.lightBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
          ],
        );
      },
    );
  });
}
