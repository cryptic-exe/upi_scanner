import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:upi_verification/qrScanner.dart';

String? upiID;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController upiIdController = new TextEditingController();
  TextEditingController contactController = new TextEditingController();

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
                    onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: Text(
                    'Savings',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
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
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 40, right: 40, bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter UPI Number',
              ),
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
          Container(
            height: 350,
            // child : Text('cameraScreen'),
            child: QRViewExample(),
            // constraints: BoxConstraints.expand()
          ),
        ],
      ),
      bottomSheet: Container(
        // color:Colors.red,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40), // if you need this
            side: BorderSide(
              color: Colors.black12,
              width: 1,
            ),
          ),
          child: Container(
            color: Colors.white,
            width: double.maxFinite,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    'Search Contacts',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Select Number',
                      icon: Icon(
                        Icons.contact_phone_rounded,
                      ),
                    ),
                    controller: contactController,
                    keyboardType: TextInputType.text,
                    onSubmitted: (String text) {
                      setState(() {
                        upiID = contactController.text;
                      });
                      contactController.clear();
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20.0),
                      child: CircleAvatar(
                        maxRadius: 30,
                        backgroundImage: NetworkImage(
                            'https://content.fakeface.rest/female_31_9fc0428d6999ddd219c8d03cea868fa355d66ec9.jpg'),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 20.0),
                          child: Text(
                            'Sumanth Varma',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('7530009088',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                          ),),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
