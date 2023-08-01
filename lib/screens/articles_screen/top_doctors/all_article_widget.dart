import 'package:doctor/screens/articles_screen/top_doctors/all_article_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common_widget/common_container.dart';
import '../../../common_widget/common_text.dart';
import '../../../utils/color_res.dart';
import '../../../utils/string_res.dart';

double h = Get.height;
double w = Get.width;

AppBar appbar() {
  return AppBar(
    backgroundColor: ColorRes.scaffoldColor,
    foregroundColor: Colors.black,
    title: commonText(
      data: StringRes.articleAppbarTitle,
      fontFamily: StringRes.josefinSans,
      fontWeight: FontWeight.bold,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_horiz),
      ),
    ],
  );
}

Widget allAtriclesTab() {
  return GetBuilder<AllArticlesController>(
    id: 'AllArticlesController',
    builder: (controller) {
      return ListView.builder(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.allArticlesTab.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            onTap: () => controller.allArticleTab(),
            child: commonContainer(
              // height: 30,
              width: 90,
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(20),
                color:
                    controller.allArticleTabIndex ? Colors.blue : Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: commonText(
                    data: controller.allArticlesTab[index],
                    color: controller.allArticleTabIndex
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
  return GetBuilder<AllArticlesController>(builder: (controller) {
    return ListView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.allArticleData.length,
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
                    // color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage(
                          controller.allArticleData[index]['cover'],
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
                          data: controller.allArticleData[index]['date']),
                      SizedBox(height: h*0.01,),
                      SizedBox(
                        width: w,
                        child: commonText(
                            data: controller.allArticleData[index]
                                ['description'],
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis),
                      ),
                      SizedBox(height: h*0.01,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffB4CAEA),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: commonText(
                              data: controller.allArticleData[index]['label']),
                        ),
                      ),
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
