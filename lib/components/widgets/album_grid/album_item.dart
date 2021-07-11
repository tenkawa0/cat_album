import 'package:cat_album/components/pages/album_detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/album.dart';

class AlbumItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final album = Provider.of<Album>(context);

    return GridTile(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            AlbumDetail.routeName,
            arguments: album.id,
          );
        },
        child: Hero(
          tag: album.id!,
          child: Image.asset(
            album.thumbnail,
            fit: BoxFit.cover,
          ),
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black38,
        title: Text(album.title),
        subtitle: Text(album.author.name),
      ),
    );
  }
}
