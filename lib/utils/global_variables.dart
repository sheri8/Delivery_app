import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/account.dart';
import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/booking.dart';
import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/home.dart';
import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/notification.dart';
import 'package:flutter/material.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  Home(),
  Booking(),
  Notification_screen(),
  Account()

  // Home_Screen(),
  // Fiber_dev(),
  // Heart(),
  // ChatPage(),
  // Profile()
];
