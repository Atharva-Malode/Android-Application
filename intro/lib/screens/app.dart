import 'package:flutter/material.dart';
import 'package:intro/screens/home.dart';
import 'package:intro/screens/search.dart';
import 'package:intro/screens/yourLibrary.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

MiniPlayer() {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    color: Colors.blueGrey,
    // width: deviceSize.width,
    height: 50,
  );
}

class _MyAppState extends State<MyApp> {
  final Tabs = [Home(), Search(), yourLibrary()];
  int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    //just like a web page
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: (currentIndex) {
            currentTabIndex = currentIndex;
            setState(() {});
          },
          selectedLabelStyle: TextStyle(color: Colors.white),
          selectedItemColor: Colors.white,
          backgroundColor: Colors.black54,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.white), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books_outlined, color: Colors.white),
                label: 'library')
          ]),
    );
  }
}
