import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './album_item.dart';

import '../../../models/albums.dart';

class AlbumGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final albums = Provider.of<Albums>(context);

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: albums.items[i],
        child: AlbumItem(),
      ),
      itemCount: albums.items.length,
    );
  }
}
