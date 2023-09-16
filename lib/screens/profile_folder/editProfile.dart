import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          child: const Center(
            child: Text("Edit Profile"),
          ),
        ),
      ),
    );
  }
}
