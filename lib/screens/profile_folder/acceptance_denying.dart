import 'package:flutter/material.dart';

class RequestList extends StatelessWidget {
  const RequestList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Requests"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          child: const Center(
            child: Text("Accept or deny requests"),
          ),
        ),
      ),
    );
  }
}
