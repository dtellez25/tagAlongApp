import 'package:flutter/material.dart';
import 'screens/home_folder/home_screen.dart'; // Import HomeScreen
import 'screens/notifications_folder/notifications_screen.dart'; // Import NotificationsScreen
import 'screens/profile_folder/profile_screen.dart'; // Import ProfileScreen

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tag Along"),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue,
        selectedItemColor: Colors.white, // Set the icon color to white
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Profile")
        ],
      ),
      body: screens.elementAt(currentIndex),
    );
  }
}
