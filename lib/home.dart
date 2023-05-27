import 'package:flutter/material.dart';
import 'package:job_seeker_/mainhome.dart';
import 'profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter(int index) {
    setState(() {
      _counter = index;
    });
  }

  final List<Widget> _pages = [
    MainHome(),
    Center(
      child: Text(
        'Messages',
        style: TextStyle(fontSize: 20),
      ),
    ),
    ProfilePage(),
    Center(
      child: Text(
        'Settingss',
        style: TextStyle(fontSize: 20),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 239, 241),
      body: _pages[_counter],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _incrementCounter,
          type: BottomNavigationBarType.fixed,
          currentIndex: _counter,
          selectedItemColor: Color(0xFF291150),
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment), label: 'Applications'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
