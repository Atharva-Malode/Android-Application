import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 40, color: Colors.yellow),
      ),
    );
  }
}
