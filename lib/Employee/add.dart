import 'package:delivery_app/Employee/save.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Employe',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 90),
                textfield2('Employ Name'),
                SizedBox(height: 25),
                textfield2('Phone Name'),
                SizedBox(height: 25),
                textfield2('Email Address'),
                SizedBox(height: 25),
                textfield2('Password'),
                SizedBox(height: 60),
                Container(
                  //  margin: EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => Save()));
                      },
                      child: Text(
                        'ADD',
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
    );
  }

  Card textfield2(String name) {
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
