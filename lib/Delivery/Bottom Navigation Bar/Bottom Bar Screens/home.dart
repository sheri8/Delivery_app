// import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/Product%20screen/product.dart';
// import 'dart:html';

import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/Home%20screens/tab_bar.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/home_image.png',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 125,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Starting at USD 17.5 / \nhour',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: white),
                      ),
                      Text(
                        'Use code: Rcl893\n #For first time user only',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Book Now',
                            style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: button, shape: StadiumBorder()),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Product',
                    border: InputBorder.none),
              ),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => Tab_Bar()));
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/beauty.png'),
                      SizedBox(height: 5),
                      Text('Beauty products'),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/gettyimages-520021633-612x612 1.png',
                      width: 120,
                      height: 120,
                    ),
                    SizedBox(height: 5),
                    Text('Beauty products'),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/electrcian 1.png',
                      width: 120,
                      height: 120,
                    ),
                    SizedBox(height: 5),
                    Text('Electric products'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/plumber 1.png',
                      width: 120,
                      height: 120,
                    ),
                    SizedBox(height: 5),
                    Text('Tools'),
                    SizedBox(height: 20),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Featured services',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View all',
                      style: TextStyle(color: Colors.blue, fontSize: 10),
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '831+ Bookings were made recently!!',
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            )
            // child: GridView.builder(
            //     itemCount: 10,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       mainAxisSpacing: 0,
            //       crossAxisSpacing: 0,
            //       crossAxisCount: 2,
            //       // childAspectRatio: 0.5,
            //     ),
            //     itemBuilder: (context, i) {
            //       debugPrint("Ok");
            //       return ProductImage(
            //           // snap: snapshot.data!.docs[i].data(),
            //           );
            //    }),
          ],
        ),
      ),
    );
  }
}
