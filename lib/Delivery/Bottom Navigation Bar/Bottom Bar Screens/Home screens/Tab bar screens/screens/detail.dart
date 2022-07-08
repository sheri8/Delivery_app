// import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/Home%20screens/Tab%20bar%20screens/screens/delivery_summary.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                'assets/Oil.png',
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 150,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Herbion Oil',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                      Text(
                        'for best selling\nproduct',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ]),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Detail',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Product Name: Herbion Oil',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Retail Price: \$35',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy textever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,remaining essentially unchanged. It was popularised in the 1960s withthe release of Letraset sheets containing Lorem Ipsum passages,and more recently with desktop publishing software like Aldus Maker including versions of Lorem Ipsum.",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Address',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Address: Keas 69 Str. 15234, Chalandri Athens, Greece\n+30-2106019311 (landline) +30-6977664062',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 30),
            // Center(
            //   child: Container(
            //     margin: EdgeInsets.only(bottom: 20),
            //     child: ElevatedButton(
            //         onPressed: () {
            //           // DataBaseMethods();
            //           print('Success');
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (builder) => Delivery_Summary()));
            //         },
            //         child: Text(
            //           'Order',
            //           style: TextStyle(fontSize: 24),
            //         ),
            //         style: ElevatedButton.styleFrom(
            //             shape: StadiumBorder(),
            //             primary: button,
            //             fixedSize: Size(280, 55))),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
