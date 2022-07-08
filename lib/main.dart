import 'package:delivery_app/Delivery/register.dart';
import 'package:delivery_app/Useless%20Screens/select_interface.dart';
import 'package:delivery_app/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Delivery/Bottom Navigation Bar/Bottom Bar Screens/Home screens/Tab bar screens/screens/delivery_summary.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          // const Delivery_Summary(),
          strol(),
    );
  }
}
