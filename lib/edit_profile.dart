// import 'dart:html';

import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/bottom_navigation.dart';
import 'package:delivery_app/select_dashboard.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';

class Edit_Employee extends StatelessWidget {
  const Edit_Employee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  SizedBox(width: 60),
                  Center(
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    cursorHeight: 25,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        fillColor: Color.fromARGB(255, 207, 203, 203),
                        filled: true,
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.white54)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.white54)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        hintText: 'Search Here...'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'The Delivery Vendor (DV) can register for 14-day trial on Registration',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
              SizedBox(height: 40),
              textfield('Employee Name'),
              SizedBox(height: 25),
              textfield('Phone Number'),
              SizedBox(height: 25),
              textfield('Address'),
              SizedBox(height: 25),
              textfield('Email '),
              SizedBox(height: 25),
              textfield('Password'),
              SizedBox(height: 50),
              Container(
                height: 60,
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: button,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    // debugPrint('Delivery');
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (builder) => Select_Dashboard(),
                    //       //  MobileScreenLayout()
                    //     ));
                  },
                  child: const Text(
                    'EDIT',
                    style: TextStyle(fontSize: 16, color: white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Card textfield(String name) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: name,
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
