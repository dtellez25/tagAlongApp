import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.yellow,
          child: const Center(
            child: Text("Notifications Screen"),
          ),
        ),
      ),
    );
  }
}
