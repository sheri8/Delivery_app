import 'package:delivery_app/Customer/user2.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Customer/profile.dart';

class Employee_detail extends StatelessWidget {
  const Employee_detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.grey,
              )),
          title: Text(
            'Employee detail',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      color: Color(0xffD9D9D9),
                      child: ListTile(
                        leading: Image.asset('assets/images 1.png'),
                        title: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => Profile()));
                          },
                          child: Text(
                            'Micheal Jordan',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff08C4DE)),
                          ),
                        ),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_rounded,
                              color: Colors.grey,
                            )),
                      ));
                }),
          ),
        ));
  }
}
