import 'package:flutter/material.dart';
import '../widgets/menu_drawer/menu_drawer.dart';
import '../widgets/album_grid/album_grid.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CatAlbum',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      drawer: MenuDrawer(),
      body: AlbumGrid(),
    );
  }
}
