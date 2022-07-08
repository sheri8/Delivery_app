import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/booking.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Other screens/booking.dart';

class Notification_screen extends StatelessWidget {
  const Notification_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
        title: Text('Notification',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          color: Color(0xffD9D9D9),
                          child: ListTile(
                            leading: Image.asset('assets/images 1.png'),
                            title: InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (builder) => Profile()));
                              },
                              child: Text(
                                'Micheal Jordan',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff08C4DE)),
                              ),
                            ),
                            subtitle: Text(
                              'Guest',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey),
                            ),
                          ));
                    }),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
