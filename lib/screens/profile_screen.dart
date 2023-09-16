import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          child: Center(
            child: const Text("Profile Screen"),
          ),
        ),
      ),
    );
  }
}
