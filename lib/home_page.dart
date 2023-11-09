import 'package:praktikum_pertemuan_10/about_page.dart';
import 'package:praktikum_pertemuan_10/favorite_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _drinkFavorite = "...";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () =>
                  _openPageAbout(context = context, fullscreenDialog: true))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Minuman favorit $_drinkFavorite',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _openDrinkFavorite(context = context, fullscreenDialog: false);
        },
        tooltip: 'Change Favorite',
        child: Icon(Icons.sentiment_satisfied),
      ),
    );
  }

  void _openPageAbout(BuildContext context, {bool fullscreenDialog = true}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            fullscreenDialog: fullscreenDialog,
            builder: (context) => AboutPage()));
  }

  void _openDrinkFavorite(BuildContext context, {bool fullscreenDialog = true}) async {
    final String _favoriteResponse = await Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => FavoritePage(
          radioGroupValue: 1,
        ),
      ),
    );
    setState(() {
      _drinkFavorite = _favoriteResponse;
    });
  }
}
