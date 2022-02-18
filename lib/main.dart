import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uis_project/app_theme.dart';
import 'package:uis_project/screens/chat_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat UI',
      theme: appTheme(),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: const ChatUi(),
      bottomNavigationBar: _bottomNavigation(),
    );
  }
}

Widget _bottomNavigation() {
  return DotNavigationBar(
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          spreadRadius: 1,
          blurRadius: 15.0,
          offset: Offset(4, 4),
        )
      ],
      unselectedItemColor: Colors.white,
      dotIndicatorColor: Colors.white,
      backgroundColor: const Color(0xFF10002b),
      currentIndex: 1,
      paddingR: EdgeInsets.zero,
      onTap: (index) {},
      // dotIndicatorColor: Colors.black,
      items: [
        /// Home
        DotNavigationBarItem(
          icon: Icon(Icons.call),
          selectedColor: Colors.purple,
        ),

        /// Search
        DotNavigationBarItem(
          icon: Icon(Icons.message),
          selectedColor: Colors.cyan,
        ),

        /// Profile
        DotNavigationBarItem(
          icon: Icon(Icons.person),
          selectedColor: Colors.teal,
        ),
      ]);
}
