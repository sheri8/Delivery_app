// import 'dart:html';

import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/bottom_navigation.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
              Center(
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
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
              textfield('Name'),
              SizedBox(height: 25),
              textfield('Business Name'),
              SizedBox(height: 25),
              textfield('Phone Number'),
              SizedBox(height: 25),
              textfield('Whatsapp Number'),
              SizedBox(height: 25),
              textfield('Email Address'),
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
                    debugPrint('Delivery');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => MobileScreenLayout()));
                  },
                  child: const Text(
                    'REGISTER',
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
