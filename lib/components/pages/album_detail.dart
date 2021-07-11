import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/widgets/image_grid/image_grid.dart';
import '../../components/widgets/image_carousel/image_carousel.dart';

import '../../models/albums.dart';

class AlbumDetail extends StatelessWidget {
  static const routeName = '/album-detail';

  @override
  Widget build(BuildContext context) {
    final albumId = ModalRoute.of(context)!.settings.arguments as String;
    final album = Provider.of<Albums>(context, listen: false).find(albumId);
    final List<Widget> images = [album.thumbnail, ...album.images]
        .map((e) => Image.asset(e, fit: BoxFit.cover))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          album.title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: album.id!,
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: 400,
                  maxWidth: double.infinity,
                ),
                child:
                    ImageCarousel((_, index) => images[index % images.length]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(album.description),
            ),
            ImageGrid(album.images),
          ],
        ),
      ),
    );
  }
}
