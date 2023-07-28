import 'package:doctor/common_widget/common_container.dart';
import 'package:doctor/utils/asset_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              snap: false,
              pinned: false,
              floating: false,
              leading: const CircleAvatar(
                backgroundImage: AssetImage(AssetRes.doctorThumb2),
                backgroundColor: Colors.transparent,
              ),
              title:  Column(
                children: [
                  const Text(
                    StringRes.appbarTitle,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        fontFamily: StringRes.josefinSans),
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
                    height: Get.height*0.06,
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
              expandedHeight: Get.height*0.170,
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.notifications_none),
                  tooltip: 'Notification Icon',
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  tooltip: 'Favorite Icon',
                  onPressed: () {},
                ),
              ],
            ),
            SliverFillRemaining(
              child: Scaffold(
                body: SingleChildScrollView(
                  child: Column(children: [
                    const SizedBox(
                      height: 20,
                    ),
                    onBoardingContainer(),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    doctorSpecialityRow(),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    SizedBox(
                      height: h * 0.28,
                      child: doctorSpecGridView(),
                    ),
                    SizedBox(
                      height: h * 0.05,
                    ),
                    topDoctorRow(),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    SizedBox(
                      height: h * 0.075,
                      width: w,
                      child: topDoctorsTab(),
                    ),
                    topDoctorsField()
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
