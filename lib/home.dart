import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  int currentIndex = 0;

  List<Widget> screens = [
    Container(
      color: Colors.red,
      child: Text("Home Screen"),
    ),
    Container(
      color: Colors.blue,
      child: Text("Notifications Screen"),
    ),
    Container(
      color: Colors.green,
      child: Text("Profile Screen"),
    ),
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
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.lightBlue,
            currentIndex: currentIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: "Notifications"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: "Profile")
            ]),
        body: screens.elementAt(currentIndex));
  }
}
