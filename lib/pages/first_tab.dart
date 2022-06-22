import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            itemCount: 2,
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 15, mainAxisSpacing: 25, crossAxisCount: 2),
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.only(top: 10),
                child: Card(
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
                            'assets/watch.jpg',
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
                ),
              );
            }));
  }
}
