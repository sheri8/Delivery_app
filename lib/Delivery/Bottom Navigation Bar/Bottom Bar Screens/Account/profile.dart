// import 'package:college_meet/BottomNavigatonBar/Screens/Edit%20Profile/edit_profile.dart'

import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile123 extends StatelessWidget {
  const Profile123({Key? key}) : super(key: key);
  zisttile(String text, IconData icon, VoidCallback function) {
    return ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.pink[100],
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: Colors.redAccent,
            ),
          ),
        ),
        title: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
        ),
        trailing: IconButton(
          onPressed: function,
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Colors.redAccent,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 130,
                // width: MediaQuery.of(context).size.width * 0.9,
                // width: 100,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/images/Jason.jpg'),
                    ),
                    Positioned(
                      top: 80,
                      left: 80,
                      // bottom: 20,
                      child: Container(
                        height: 30,
                        width: 30,
                        // width: 20,
                        // height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.redAccent,
                        ),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.edit,
                                size: 15,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text(
              'Adam Smith',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 15,
              endIndent: 15,
            ),
            // ListTile()
            zisttile('Edit Profile', Icons.person, () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (builder) => Edit_Profile()));
            }),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 15,
              endIndent: 15,
            ),
            zisttile('Notification', Icons.notifications, () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (builder) => Notification_Screen()));
            }),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 15,
              endIndent: 15,
            ),
            zisttile('Security', Icons.lock, () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (builder) => Invite_Friends()));
            }),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 15,
              endIndent: 15,
            ),
            zisttile('Invite Friends', Icons.people, () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (builder) => Invite_Friends()));
            }),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 15,
              endIndent: 15,
            ),
            zisttile('Logout', Icons.login_outlined, () {})
          ],
        ),
      ),
    );
  }
}
