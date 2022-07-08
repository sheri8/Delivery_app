import 'package:flutter/material.dart';

import 'Other screens/booking.dart';

class Booking123 extends StatelessWidget {
  const Booking123({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height, child: Booking())
          ],
        ),
      ]),
    );
  }
}
