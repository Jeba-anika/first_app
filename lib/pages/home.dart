// ignore_for_file: prefer_const_constructors

import 'dart:ffi' as Size;
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _catagories = [
    'Food',
    'Electronics',
    'Groceries',
    'Dress',
    'Fashion',
    'Glasses',
    'Camera',
    'Toys'
  ];

  bool closeTopContainer = false;

  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
              // ignore: prefer_const_literals_to_create_immutables
              Padding(
        padding: EdgeInsets.only(top: 30.0, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Jeba",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
            Text(
              "Let's get Something?",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4F4C4C)),
            ),
            SizedBox(
              height: 50,
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: closeTopContainer ? 0 : 1,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                alignment: Alignment.topCenter,
                height: closeTopContainer ? 0 : 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FittedBox(
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 150,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "40% Off During \n Covid 19",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                    'assets/vegetables.png',
                                    width: 100,
                                    height: 80,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "40% Off During \n Covid 19",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/vegetables.png',
                                  width: 100,
                                  height: 80,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "40% Off During \n Covid 19",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/vegetables.png',
                                  width: 100,
                                  height: 80,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Top Catagories",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: closeTopContainer ? 0 : 1,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                alignment: Alignment.topCenter,
                height: closeTopContainer ? 0 : 30,
                child: Container(
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _catagories.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 7.0),
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Center(
                                child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Text(_catagories[index]),
                            )),
                          ),
                        );
                      }),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: GridView.builder(
                    controller: controller,
                    itemCount: 10,
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 25,
                        crossAxisCount: 2),
                    itemBuilder: (_, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.white,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                                top: -15,
                                left: 12,
                                child: Image.asset(
                                  'assets/watch.png',
                                  width: 147,
                                  height: 120,
                                  alignment: Alignment.topCenter,
                                )),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Text(
                                      'Apple Watch',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Series 6.Red',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xFF868686),
                                    ),
                                  ),
                                  Text(
                                    '\$ 359',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                      color: Color(0xFF5956E9),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }))
          ],
        ),
      )),
    );
  }
}
