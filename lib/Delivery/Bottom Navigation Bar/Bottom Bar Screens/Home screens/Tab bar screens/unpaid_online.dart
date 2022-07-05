import 'package:flutter/material.dart';

import 'screens/product_detail.dart';

class Unpaid_online extends StatelessWidget {
  const Unpaid_online({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => Product_detail()));
                },
                // onTap: () {

                child: Image.asset('assets/23 2.png')),
            Image.asset(
              'assets/23 2.png',
              // width: 120,
              // height: 120,
            )
          ],
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/23 2.png'),
            Image.asset(
              'assets/23 2.png',
              // width: 120,
              // height: 120,
            )
          ],
        ),
      ],
    );
    ;
  }
}
