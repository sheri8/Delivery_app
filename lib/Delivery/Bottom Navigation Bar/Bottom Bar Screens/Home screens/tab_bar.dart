import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/Home%20screens/Tab%20bar%20screens/ofline_orders.dart';
import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/Home%20screens/Tab%20bar%20screens/open_orders.dart';
import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/Home%20screens/Tab%20bar%20screens/pick_orders.dart';
import 'package:delivery_app/Delivery/Bottom%20Navigation%20Bar/Bottom%20Bar%20Screens/Home%20screens/Tab%20bar%20screens/unpaid_online.dart';
import 'package:flutter/material.dart';

class Tab_Bar extends StatelessWidget {
  const Tab_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
          ),
          title: const Text(
            'Status Panel',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          centerTitle: true,
          bottom: const TabBar(
            labelPadding: EdgeInsets.all(8),
            tabs: <Widget>[
              Tab(
                text: 'Open orders',
              ),
              Tab(
                text: 'Pick up orders',
              ),
              Tab(
                text: 'Offline orders',
              ),
              Tab(
                text: 'Unpaid online orders',
                // child: Container(),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Open_orders(),
            Pick_orders(),
            Offline_orders(),
            Unpaid_online(),
            // CurrentAppointments(),
            // PastAppointments(),
          ],
        ),
      ),
    );
  }
}
