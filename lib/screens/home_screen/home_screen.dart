import 'package:doctor/common_widget/common_container.dart';
import 'package:doctor/common_widget/common_text.dart';
import 'package:doctor/utils/asset_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import '../search&filter/search&filter.dart';
import 'home_screen_controller.dart';
import 'home_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    double h = Get.height;
    double w = Get.width;
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              snap: false,
              pinned: false,
              floating: false,
              expandedHeight: Get.height * 0.170,
              foregroundColor: Colors.black,
              backgroundColor: ColorRes.scaffoldColor,
              leading: GetBuilder<HomeScreenController>(builder: (controller) {
                return InkWell(
                  onTap: () => controller.onProfile(),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(AssetRes.doctorThumb2),
                    backgroundColor: Colors.transparent,
                  ),
                );
              }),
              title: Column(
                children: [
                  /*const Text(
                    StringRes.appbarTitle,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        fontFamily: StringRes.josefinSans),
                  ),*/
                  // greeting(),
                  GetBuilder<HomeScreenController>(
                    builder: (controller) {
                      return controller.greeting();
                    },
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  const Text(
                    StringRes.appbarUsername,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      // fontFamily: StringRes.josefinSans,
                    ),
                  ),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: const Size(0, 0),
                child: InkWell(
                  onTap: () {
                    Get.to(() => const SearchAndFilter());
                  },
                  child: commonContainer(
                    padding: const EdgeInsets.all(10),
                    height: Get.height * 0.06,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black.withOpacity(0.3),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                        Text(
                          StringRes.searchbarHintText,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.filter_list_alt,
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              actions: <Widget>[
                GetBuilder<HomeScreenController>(builder: (controller) {
                  return IconButton(
                    icon: const Icon(Icons.notifications_none),
                    tooltip: 'Notification Icon',
                    onPressed: () => controller.onNotification(),
                  );
                }),
                GetBuilder<HomeScreenController>(builder: (controller) {
                  return IconButton(
                    icon: const Icon(Icons.favorite_border),
                    tooltip: 'Favorite Icon',
                    onPressed: () => controller.onLikedDoctor(),
                  );
                }),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: h * 0.02,
                  ),
                  onBoardingContainer(),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  doctorSpecialityRow(),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  //===============currently====================
                  SizedBox(
                    height: h * 0.30,
                    child: doctorSpecGridView(),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  topDoctorRow(),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  // SizedBox(
                  //   height: h * 0.075,
                  //   width: w,
                  //   child: topDoctorsTab(),
                  // ),
                  SizedBox(
                    height: h * 0.35,
                    width: w,
                    child: topDoctorsField(),
                  ),
                  SizedBox(
                    height: h * 0.08,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopDoctors extends StatelessWidget {
  const TopDoctors({Key? key}) : super(key: key);

  // final HomeScreenController _homeScreenController =
  //     Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    double h = Get.height;
    double w = Get.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: Colors.black,
        backgroundColor: ColorRes.scaffoldColor,
        leading: GetBuilder<HomeScreenController>(
            id: 'HomeScreenController',
            builder: (controller) {
              return IconButton(
                onPressed: () => controller.onBackSpecialityWiseDoctor(),
                icon: const Icon(Icons.arrow_back),
              );
            }),
        title: GetBuilder<HomeScreenController>(
            id: 'HomeScreenController',
            builder: (controller) {
              return const Text(
                // controller.selectedGridIndexBool == true
                //     ? 'other'
                //     :
                'Best Doctor',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  fontFamily: StringRes.josefinSans,
                ),
              );
            }),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      backgroundColor: ColorRes.scaffoldColor,
      body: GetBuilder<HomeScreenController>(builder: (controller) {
        return ListView.builder(
          itemCount: controller.doctorList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => controller.onDoctorInfo(index),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          commonContainer(
                            margin: const EdgeInsets.all(15),
                            height: h * 0.15,
                            width: w * 0.30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    controller.doctorList[index]['image'],
                                  ),
                                  fit: BoxFit.cover),
                              // color: Colors.orange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          commonText(
                            data: controller.doctorList[index]['name'],
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            fontFamily: StringRes.josefinSansBold,
                          ),
                          const Divider(
                            color: Colors.red,
                            thickness: 4,
                            height: 5,
                          ),
                          commonText(
                            data: controller.doctorList[index]['qualification'],
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                            fontFamily: StringRes.josefinSans,
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              const Text('2.6'),
                              SizedBox(
                                width: w * 0.03,
                              ),
                              commonText(
                                data: '(20 Reviews)',
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                fontFamily: StringRes.josefinSans,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
