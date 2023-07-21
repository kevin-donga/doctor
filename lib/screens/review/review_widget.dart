import 'package:flutter/material.dart';

Widget reviewRow() {
  return const Row(
    children: [
      Text(
        'Reviews',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      Spacer(),
      Text(
        'See all',
        style: TextStyle(color: Colors.orange, fontSize: 12),
      ),
    ],
  );
}

Widget reviewContainer() {
  return Container(
    padding: const EdgeInsets.all(15),
    height: 200,
    width: double.infinity,
    decoration: BoxDecoration(
        color: const Color(0xff2f2e2e), borderRadius: BorderRadius.circular(5)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Text(
                      'Samantha Williom',
                      style: TextStyle(
                          fontWeight: FontWeight.w200, color: Colors.white),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xff9ACD4C),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Text(
              '" Lorem ipsum dolor sit amet, consectetur\n '
              'adipiscing lit. Ut elit tellus, luctus nec ullamcorper\n'
              ' mattis, pulvinar dapibus leo Lorem ipsum.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Colors.white.withOpacity(0.7),
                fontWeight: FontWeight.w200,
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Widget storyRow() {
  return const Row(
    children: [
      Text(
        'Story',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      Spacer(),
      Text(
        'See all',
        style: TextStyle(color: Colors.orange, fontSize: 12),
      ),
    ],
  );
}

Widget storyContainer() {
  return Container(
    padding: const EdgeInsets.all(20),
    width: 358,
    height: 209,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff1c1c1c)),
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Samantha Williom",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w200,
          ),
          textAlign: TextAlign.center,
        ),
        Text("New Delhi",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            )),
        Text(
            '"Lorem ipsum dolor sit amet, consectetur\n adipiscing lit. Ut elit tellus, luctus nec ullamcorper\n mattis, pulvinar dapibus leo Lorem ipsum. nec \nullamcorper mattis, pulvinar dapibus leo Lorem\nipsum.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w200,
            ))
      ],
    ),
  );
}

Widget ElavatedSubmitReview() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        alignment: Alignment.center,
          width: 175,
          height: 43,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff9acd4c)),
        child: Text('Submit Story'),
      ),Container(
        alignment: Alignment.center,
          width: 175,
          height: 43,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff9acd4c)),
        child: Text('Submit Reviews'),
      )
    ],
  );
}
