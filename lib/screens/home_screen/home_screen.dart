import 'package:doctor/common_widget/common_container.dart';
import 'package:doctor/utils/asset_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/string_res.dart';
import '../search&filter/search&filter.dart';
import 'home_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final title = 'GeeksforGeeks';
    double h = Get.height;
    double w = Get.width;
    return Scaffold(
        body: Padding(
      padding:
          EdgeInsets.only(left: h * 0.020, right: h * 0.020, top: h * 0.010),
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
            // flexibleSpace: FlexibleSpaceBar(
            //     background: Image.network(
            //       "https://i.ibb.co/QpWGK5j/Geeksfor-Geeks.png",
            //       fit: BoxFit.cover,
            //     )),
            title: const Column(
              children: [
                Text(
                  StringRes.appbarTitle,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      fontFamily: StringRes.josefinSans),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
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
                  Get.to(const SearchAndFilter());
                },
                child: commonContainer(
                  padding: const EdgeInsets.all(10),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search,color: Colors.black.withOpacity(0.3),),
                        SizedBox(width: w*0.02,),
                        Text(StringRes.searchbarHintText,style: TextStyle(color: Colors.black.withOpacity(0.3),),),
                        const Spacer(),
                        Icon(Icons.filter_list_alt,color: Colors.black.withOpacity(0.3),),
                      ],
                    )),
              ),
            ),
            expandedHeight: 170,
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
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              onboardingContainer(),
              SizedBox(height: h*0.02,),
              doctorSpecialityRow(),
              SizedBox(height: h*0.01,),
              doctorSpecGridView(),
              SizedBox(height: h*0.05,),
              topDoctorRow(),
              SizedBox(height: h*0.01,),
              topDoctorsTab(),
            ]),
          ),
        ],
      ),
    ));
  }
}
