import 'package:delivery_app/Customer/inbbox.dart';
import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/Home%20screens/Tab%20bar%20screens/screens/product_detail.dart';
import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/Home%20screens/tab_bar.dart';
import 'package:delivery_app/login_employee.dart';
import 'package:delivery_app/rates.dart';
import 'package:delivery_app/register_employee.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';

class Select_Dashboard extends StatelessWidget {
  const Select_Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              select('Status \nPanel', () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Tab_Bar()));
              }),
              select('Orders', () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Product_detail()));
              })
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              select('Rates', () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => Rates()));
              }),
              select('Messages', () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => ChatPage()));
              })
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              select('Employees', () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Login_Employee()));
              }),
              select('Settings', () {})
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [select('Profile', () {})],
          ),
        ],
      ),
    );
  }

  InkWell select(name, Ontap) {
    return InkWell(
      onTap: Ontap,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        color: Color.fromARGB(255, 230, 225, 225),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            height: 60,
            width: 100,
            child: Center(
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
