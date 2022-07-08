import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'currentappointment.dart';
import 'pastappointment.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Bookings',
            // style: TextStyle(color: Colors.black),
          ),
          bottom: const TabBar(
            labelPadding: EdgeInsets.all(12),
            tabs: <Widget>[
              Tab(
                text: 'Current Order',
              ),
              Tab(
                text: 'Previous Order',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CurrentAppointments(),
            PastApointment(),
          ],
        ),
      ),
    );
  }
}
