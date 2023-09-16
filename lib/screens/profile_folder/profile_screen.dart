import 'package:flutter/material.dart';
import 'package:tag_along/screens/profile_folder/acceptance_denying.dart';
import 'package:tag_along/screens/profile_folder/editProfile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Welcome to your profile!",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to EditProfileScreen when "Edit Profile" is pressed
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EditScreen(),
                ));
              },
              child: const Text("Edit Profile"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to RequestListScreen when "Request List" is pressed
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const RequestList(),
                ));
              },
              child: const Text("Request List"),
            ),
          ],
        ),
      ),
    );
  }
}
