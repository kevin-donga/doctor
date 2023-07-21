import 'package:doctor/screens/review/review_widget.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            reviewRow(),
            SizedBox(height: 25,),
            reviewContainer(),
            SizedBox(height: 25,),
            storyRow(),
            SizedBox(height: 25,),
            storyContainer(),
            SizedBox(height: 60,),
            ElavatedSubmitReview(),
          ],
        ),
      ),
    );
  }
}
