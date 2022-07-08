import 'package:delivery_app/Customer/user2.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 55),
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
                      'User',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Card(
                elevation: 5,
                color: Color(0xffD9D9D9),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      Text(
                        '  235-340',
                        style: TextStyle(
                            color: Color.fromARGB(255, 131, 174, 209),
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Show ALL',
                  style: TextStyle(
                      color: Color(0xff0BC4DE),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => User2()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Created Recently',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffCF2D24),
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '245',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffCF2D24),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Colors.pink[200],
                          fixedSize: Size(390, 55))),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Created Recently',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '17',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Customer type',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        // fillColor: Colors.grey,
                        // filled: true,
                        hintText: 'Guest',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Date',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        // fillColor: Colors.grey,
                        // filled: true,
                        hintText: 'Last 12 hrs',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
