import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.person,
            color: Colors.black,
            size: 140.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text('Jason Miller',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ))),
          Padding(padding: EdgeInsets.all(12)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email,
                color: Colors.grey,
                size: 15.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text('jason.miller@gmail.com',
                      style: TextStyle(fontSize: 15, color: Colors.grey))),
            ],
          ),
          Divider(
            indent: 18,
            endIndent: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.phone,
                color: Colors.grey,
                size: 15.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text('+1 205-678-9870',
                      style: TextStyle(fontSize: 15, color: Colors.grey))),
            ],
          ),
        ]),
      ),
    );
  }
}
