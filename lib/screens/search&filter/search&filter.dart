import 'package:doctor/screens/search&filter/search&filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/string_res.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Get.height;
    double w = Get.width;
    Get.put(SearchFilterController());
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: w * 0.05, right: w * 0.05, top: h * 0.05),
        child: GetBuilder<SearchFilterController>(
            id: "",
            builder: (controller) {
              return Column(
                children: [
                  SearchBar(
                    controller: controller.searchController,
                    trailing: [
                      Icon(
                        Icons.filter_list_alt,
                        color: Colors.black.withOpacity(0.3),
                      )
                    ],
                    leading: Icon(
                      Icons.search,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    hintText: StringRes.searchbarHintText,
                    hintStyle: MaterialStatePropertyAll(
                        TextStyle(color: Colors.black.withOpacity(0.3))),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.blueGrey.shade50),
                    elevation: const MaterialStatePropertyAll(0),
                  ),
                  SizedBox(
                    height: h * 0.4,
                  ),
                  Text('Future Enhanced'),
                ],
              );
            }),
      ),
    );
  }
}
