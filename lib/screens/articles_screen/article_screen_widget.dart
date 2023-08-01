import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/common_container.dart';
import '../../common_widget/common_text.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import 'article_screen_controller.dart';

double h = Get.height;
double w = Get.width;

Widget articlesAppbar() {
  return Row(
    children: [
      Container(
        height: Get.height * 0.06,
        width: Get.width * 0.14,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.transparent,
        ),
        child: Image.asset(
          AssetRes.articleAppbarLogo,
          fit: BoxFit.fill,
          color: Colors.blue,
        ),
      ),
      SizedBox(
        width: Get.width * 0.1,
      ),
      commonText(
        data: StringRes.articleAppbarTitle,
        color: ColorRes.blackColor,
        fontWeight: FontWeight.bold,
        fontSize: 25,
        fontFamily: StringRes.josefinSans,
      ),
      const Spacer(),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          IconRes.favoriteBorderIcon,
          color: ColorRes.blackColor,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          IconRes.bookmarkBorderIcon,
          color: ColorRes.blackColor,
        ),
      ),
    ],
  );
}

Widget trendingRowHeadline() {
  return Row(
    children: [
      commonText(
          data: StringRes.trendingRow,
          fontSize: 18,
          fontFamily: StringRes.josefinSans,
          fontWeight: FontWeight.bold),
      const Spacer(),
      commonText(
          data: StringRes.seeAllString,
          color: Colors.blue,
          fontSize: 18,
          fontFamily: StringRes.josefinSans,
          fontWeight: FontWeight.bold),
    ],
  );
}

Widget trendingArticles() {
  return GetBuilder<ArticleController>(builder: (controller) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: controller.trendingArticles.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: h * 0.2,
              width: w * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(
                      controller.trendingArticles[index]['cover'],
                    ),
                    fit: BoxFit.cover),
                color: Colors.orange,
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            SizedBox(
              // height: h * 0.1,
              width: w * 0.6,
              child: commonText(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  data: controller.trendingArticles[index]['description'],
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSansBold),
            )
          ],
        );
      },
    );
  });
}

Widget articlesHeadingRow() {
  return GetBuilder<ArticleController>(
      builder: (controller) {
        return Row(
          children: [
            commonText(
              data: StringRes.article,
              fontSize: 18,
              fontFamily: StringRes.josefinSans,
              fontWeight: FontWeight.bold,),
            const Spacer(),
            InkWell(
              onTap:()=>controller.allArticles(),
              child: commonText(
                data: StringRes.seeAllString,
                color: Colors.blue,
                fontSize: 18,
                fontFamily: StringRes.josefinSans,
                fontWeight: FontWeight.bold,),
            ),
          ],
        );
      }
  );
}

Widget atriclesTab() {
  return GetBuilder<ArticleController>(
    id: 'ArticleController',
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
              // height: 30,
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

Widget articlesList() {
  return GetBuilder<ArticleController>(builder: (controller) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.articleData.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
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
                      commonText(data: controller.articleData[index]['date']),
                      SizedBox(
                        width: w,
                        child: commonText(
                            data: controller.articleData[index]['description'],maxLines: 3,overflow: TextOverflow.ellipsis),
                      ),
                      commonText(data: controller.articleData[index]['label']),
                    ],
                  ),
                ),
              ],
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
