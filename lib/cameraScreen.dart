import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

String? upiID;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController upiIdController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        verticalDirection: VerticalDirection.down,
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 5),
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                new IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Frame');
                    }),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: Text(
                    'Savings',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, top: 10),
            alignment: Alignment.topLeft,
            child: Text(
              'Pay through UPI',
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 40, right: 40, bottom: 20),
            child: TextField(
              controller: upiIdController,
              keyboardType: TextInputType.text,
              onSubmitted: (String text) {
                setState(() {
                  upiID = upiIdController.text;
                });
                upiIdController.clear();
              },
            ),
          ),
          Stack(
            children: [
              Container(
                child: Text('hey this is camera area'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
