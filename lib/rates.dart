import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';

class Rates extends StatelessWidget {
  const Rates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text('Product Detail',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 20)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Product',
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(),
              columnWidths: const <int, TableColumnWidth>{
                // 0: IntrinsicColumnWidth(),
                // 1: FlexColumnWidth(),
                // 2: FixedColumnWidth(64),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: Text(
                        'Order Name',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: Text(
                        'Order Description',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                    // TableCell(
                    //   verticalAlignment: TableCellVerticalAlignment.top,
                    //   child: Container(
                    //     height: 32,
                    //     width: 32,
                    //     color: Colors.red,
                    //   ),
                    // ),
                    Text(
                      'Area',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                  ],
                ),
                table_row(),
                table_row(),
                table_row(),
                table_row(),
                table_row(),
                table_row(),
                table_row()
              ],
            ),
          ]),
        ),
      ),
    );
  }

  TableRow table_row() {
    return TableRow(
      // decoration: const BoxDecoration(
      //   color: Colors.grey,
      // ),
      children: <Widget>[
        order_name('DA-101'),
        Order_description('Purified'),
        area('Johar Town')
      ],
    );
  }

  Text area(nAMe) {
    return Text(
      nAMe,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 15),
    );
  }

  Text Order_description(Name) {
    return Text(
      Name,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 15),
    );
  }

  Padding order_name(name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
    );
  }
}
