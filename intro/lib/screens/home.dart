import 'package:flutter/material.dart';
import 'package:intro/models/category.dart';
import 'package:intro/services/category_operation.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget createCategory(category category) {
    return Container(
        color: Colors.blueGrey.shade400,
        child: Row(
          children: [
            Image.network(category.imageURL, fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                category.name,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ));
  }

  List<Widget> createListOfCategories() {
    List<category> categorylist = categoryOperations.getCategories();
    List<Widget> categories =
        categorylist.map((category) => createCategory(category)).toList();
    return categories;
  }

  Widget createGrid() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 400,
      child: GridView.count(
        childAspectRatio: 4 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: createListOfCategories(),
        crossAxisCount: 2,
      ),
    );
  }

  Widget createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message),
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 10), child: Icon(Icons.settings))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        children: [
          createAppBar('Good Morning'),
          SizedBox(
            height: 5,
          ),
          createGrid()
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.blueGrey.shade300,
        Colors.black,
        Colors.black,
        Colors.black
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      //color: Colors.blueGrey,
    ));
  }
}
