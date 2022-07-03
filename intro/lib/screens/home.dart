import 'package:flutter/material.dart';
import 'package:intro/models/category.dart';
import 'package:intro/models/music.dart';
import 'package:intro/services/category_operation.dart';
import 'package:intro/services/music_operations.dart';

class Home extends StatelessWidget {
  Function _miniplayer;
  Home(this._miniplayer);

  ///const Home({Key? key}) : super(key: key);

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

  Widget createMusic(Music music) {
    return Padding(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 200,
            child: InkWell(
              onTap: () {
                _miniplayer(music);
              },
              child: Image.network(
                music.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            music.name,
            style: TextStyle(color: Colors.white),
          ),
          Text(music.desc, style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }

  Widget createMusicList(String label) {
    List<Music> musicList = MusicOperations.getMusic();
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          label,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 275,
          child: ListView.builder(
            //padding: EdgeInsets.all(5),
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return createMusic(musicList[index]);
            },
            itemCount: musicList.length,
          ),
        )
      ]),
    );
  }

  Widget createGrid() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 280,
      child: GridView.count(
        childAspectRatio: 5 / 2,
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
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        child: Column(
          children: [
            createAppBar('Good Morning'),
            SizedBox(
              height: 5,
            ),
            createGrid(),
            createMusicList('Made For You'),
            createMusicList('Popular Playlist')
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
      )),
    );
  }
}
