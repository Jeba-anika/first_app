import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: Image.asset('assets/watch.jpg'),
                  title: Text(
                    'Apple Watch',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  subtitle: Text(
                    'Series 6.Red',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xFF868686)),
                  ),
                  trailing: Text(
                    '\$ 365',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Color(0xFF5956E9),
                    ),
                  ),
                )),
            SizedBox(
              height: 5,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: Image.asset('assets/watch.jpg'),
                title: Text(
                  'Apple Watch',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                subtitle: Text(
                  'Series 6.Red',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xFF868686),
                  ),
                ),
                trailing: Text(
                  '\$ 365',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: Color(0xFF5956E9),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
