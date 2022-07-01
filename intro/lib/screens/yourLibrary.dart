import 'package:flutter/material.dart';

class yourLibrary extends StatelessWidget {
  const yourLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text(
        'Your Library',
        style: TextStyle(fontSize: 40, color: Colors.yellow),
      ),
    );
  }
}
