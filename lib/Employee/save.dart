import 'package:delivery_app/Employee/dashboard.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Save extends StatelessWidget {
  const Save({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(children: [
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    // SizedBox(width: 60),
                    Text(
                      'Employe',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                    ),
                    // Spacer(),
                    Column(
                      children: [
                        Icon(
                          Icons.edit_note,
                          color: Colors.black,
                        ),
                        Text(
                          'Edit Profile',
                          style: TextStyle(fontSize: 8, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              textfield3('Johnson'),
              SizedBox(
                height: 30,
              ),
              textfield3('+972157326478'),
              SizedBox(
                height: 30,
              ),
              textfield3('st# 1 near boulverd Madina Town'),
              SizedBox(
                height: 30,
              ),
              textfield3('johnson76@gmail.com'),
              SizedBox(
                height: 30,
              ),
              textfield3('***************'),
              SizedBox(height: 60),
              Container(
                //  margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Dashboard()));
                    },
                    child: Text(
                      'SAVE',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        primary: button,
                        fixedSize: Size(380, 55))),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Card textfield3(String name) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: name,
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
