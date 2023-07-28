import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'history_screen_controller.dart';
import 'history_screen_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HistoryScreenController());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              historyAppbar(),
              historyListview(),
            ],
          ),
        ),
      ),
    );
  }
}
