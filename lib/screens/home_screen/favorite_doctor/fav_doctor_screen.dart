import 'package:flutter/material.dart';

import '../../../common_widget/common_text.dart';
import '../../../utils/string_res.dart';

class FavDoctorScreen extends StatelessWidget {
  const FavDoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: commonText(
            data: StringRes.favDoctorAppbarTitle,
            fontFamily: StringRes.josefinSans,
            fontWeight: FontWeight.bold),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      ),
      body: Center(
        child: commonText(data: StringRes.noLiked),
      ),
    );
  }
}
