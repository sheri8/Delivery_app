import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/Home%20screens/Tab%20bar%20screens/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Open_orders extends StatelessWidget {
  const Open_orders({Key? key}) : super(key: key);

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
    // GridView.builder(
    //     shrinkWrap: true,
    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 2,
    //       mainAxisSpacing: 30,
    //     ),
    //     itemBuilder: (context, index) {
    //       return Column(
    //         children: [
    //           SizedBox(
    //             height: 30,
    //           ),
    //           Image.asset(
    //             'assets/23 2.png',
    //             height: 100,
    //             width: 50,
    //           ),
    //         ],
    //       );
    //     });
  }
}
