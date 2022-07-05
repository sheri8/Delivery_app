import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/global_variables.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int _page = 0;
  late PageController pageController;

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: homeScreenItems,
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(
              icon: Column(
            children: [
              Icon(Icons.home,
                  size: 22, color: _page == 0 ? button : Colors.black),
              Text(
                'Home',
                style: TextStyle(color: _page == 0 ? button : Colors.black),
              )
            ],
          )),
          // backgroundColor: primaryColor,

          BottomNavigationBarItem(
              icon: Column(
            children: [
              Icon(Icons.calendar_today_outlined,
                  size: 22, color: _page == 1 ? button : Colors.black),
              Text(
                'Bookings',
                style: TextStyle(color: _page == 1 ? button : Colors.black),
              )
            ],
          )),
          BottomNavigationBarItem(
              icon: Column(
            children: [
              Icon(Icons.notifications,
                  size: 22, color: _page == 2 ? button : Colors.black),
              Text(
                'Notification',
                style: TextStyle(color: _page == 2 ? button : Colors.black),
              ),
            ],
          )),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.person_pin,
                    size: 22, color: _page == 3 ? button : Colors.black),
                Text(
                  'Account',
                  style: TextStyle(color: _page == 3 ? button : Colors.black),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
