import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class AppointCurrentDetail extends StatefulWidget {
  const AppointCurrentDetail({Key? key}) : super(key: key);

  @override
  State<AppointCurrentDetail> createState() => _AppointCurrentDetailState();
}

class _AppointCurrentDetailState extends State<AppointCurrentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        elevation: 2,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Current Order Detail',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Image.asset(
                'assets/images/Jason.jpg',
                width: 200,
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'User Name',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Fawad Kaleem',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Phone Number',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    '+029422343',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Select Service Type',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Carpets',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'Select Area',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Residential Area',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'Address',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    '245 B Eden Garden',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'Booking Description',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Clean two rooms and all the floor carpets in given time',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'Number of Helpers',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    '2',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Price',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    '123 \$',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
