import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Text(
      'Home',
      style: TextStyle(fontSize: 40, color: Colors.yellow),
    ));
  }
}
