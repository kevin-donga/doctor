/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<SearchScreen> {
  TextEditingController searchcontroller = TextEditingController();
  List allResult = [];
  List resultList = [];

  void getData() async {
    var snapshot = await FirebaseFirestore.instance
        .collection("Course")
        .orderBy("courseName")
        .get();

    setState(() {
      allResult = snapshot.docs;
    });
    searchData();
  }

  @override
  void initState() {
    searchcontroller.addListener(onSearchChanged);
    super.initState();
  }

  onSearchChanged() {
    // ignore: avoid_print
    print(searchcontroller.text);
    searchData();
  }

  void searchData() {
    List showResult = [];
    if (searchcontroller.text != "") {
      for (var data in allResult) {
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
  }

  @override
  void dispose() {
    searchcontroller.removeListener(onSearchChanged);
    searchcontroller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    getData();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F4FD),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Search Courses",
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffF0F4FD),
        foregroundColor: Colors.black,
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const BottomBar(),
                  ));
            },
            child: const Icon(
              Icons.arrow_circle_left_rounded,
              size: 35,
            )),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CupertinoSearchTextField(
              controller: searchcontroller,
              placeholder: "What do you want to learn?",
              padding: const EdgeInsets.all(15.0),
              onChanged: (value) {},
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: resultList.isEmpty
                ? SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset(
                          "assets/no_data_found.json",
                        ),
                        const Text(
                          "Sorry...",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                              textAlign: TextAlign.center,
                              "No result was found please search correct courses",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  )
                : ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: resultList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => Coursedesc(
                                      id: resultList[index]['courseId'],
                                      courseName: resultList[index]
                                          ['courseName'],
                                      courseTime: resultList[index]
                                          ['courseTime'],
                                      courseRating: resultList[index]
                                          ['courseRating']),
                                ));
                          },
                          child: Container(
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 5,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.37,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              resultList[index]['courseImage']),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        resultList[index]['courseName'],
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/stopwatch.png",
                                            scale: 25,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            resultList[index]['courseTime'],
                                            style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.stars_rounded,
                                            color: Colors.amber,
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(resultList[index]
                                              ['courseRating']),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
          ),
        ],
      ),
    );
  }
}
*/
