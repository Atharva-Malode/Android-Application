import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //just like a web page
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(color: Colors.white),
          backgroundColor: Color.fromARGB(115, 106, 105, 105),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.white), label: 'search'),
            BottomNavigationBarItem(
                icon:
                    Icon(Icons.library_add_check_outlined, color: Colors.white),
                label: 'library')
          ]),
    );
  }
}
