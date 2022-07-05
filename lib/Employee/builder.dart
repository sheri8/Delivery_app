// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Builder2 extends StatelessWidget {
  const Builder2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      // color:(0xffD9D9D9),
      decoration: BoxDecoration(color: Color(0xffD9D9D9)),
      width: double.infinity,

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        child: Row(
          children: [
            Image.asset(
              'assets/beauty-skin-care-cosmetics_thumb 2.png',
              // width: 120,
              // height: 120,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Beauty Box',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Quantity 1',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  'Retail Price USD \$20',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
    // Container(
    // height: 100,
    // width: double.infinity,
    // color: Colors.grey,
    // child: Padding(
    //   padding: const EdgeInsets.symmetric(
    //       vertical: 6, horizontal: 10),
    //   child: Row(
    //     children: [
    //       Image.asset(
    //           'assets/beauty-skin-care-cosmetics_thumb 2.png')
    //     ],
    //   ),
    // ),
    //               );
  }
}
