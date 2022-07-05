import 'package:delivery_app/Customer/users.dart';
import 'package:delivery_app/Delivery/sign_otp.dart';
import 'package:delivery_app/Employee/add.dart';
import 'package:delivery_app/services/database_methoda.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Select_Interface extends StatelessWidget {
  const Select_Interface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                    onPressed: () {
                      print('Ok');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Sign_OTP()));
                    },
                    child: Text(
                      'Delivery',
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: button,
                        fixedSize: Size(280, 55))),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                    onPressed: () async {
                      // String res = await await DataBaseMethods()
                      //     .uploadData('Alien', 'Angel');
                      // print(res.toString());
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Add()));
                    },
                    child: Text(
                      'Employe',
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: button,
                        fixedSize: Size(280, 55))),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Users()));
                    },
                    child: Text(
                      'Customer',
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: button,
                        fixedSize: Size(280, 55))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
