import 'package:flutter/material.dart';
import 'admin_home_screen_widget.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          adminContainer(),
          liveDoctor(),
          adminListview(),
         secondListview(),
          const SizedBox(height: 140,),
        ],
      ),
    );
  }
}
