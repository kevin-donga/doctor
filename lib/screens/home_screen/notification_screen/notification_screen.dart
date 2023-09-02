import 'package:doctor/common_widget/common_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/string_res.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: commonText(
            data: StringRes.notificationAppbarTitle,
            fontFamily: StringRes.josefinSans,
            fontWeight: FontWeight.bold),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      ),
      body: Center(
        child: commonText(data: StringRes.noNotification),
      ),
    );
  }
}
