import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../services/firebase_services.dart';

class SearchFilterController extends GetxController {
  Map? allResult;
  TextEditingController searchController = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getData();
  }

  void getData() async {
    DatabaseReference? databaseReference = FirebaseDatabase.instance
        .ref('Admin');
    Map? allData = await FirebaseServices.getData(databaseReference);
    print(allData);
    allResult = allData;
    //searchData();
  }


/* void searchData() {
    List showResult = [];
    if (searchController.text != "") {
      for (var data in allResult!) {
        var courseName = data['courseName'].toString().toLowerCase();
        if (courseName.contains(searchcontroller.text.toLowerCase())) {
          showResult.add(data);
        }
      }
    } else {
      showResult = List.from(allResult);

      // ignore: avoid_print
      print(showResult);
    }
    setState(() {
      resultList = showResult;
    });
  }*/
}
