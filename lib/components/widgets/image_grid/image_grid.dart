import 'package:flutter/material.dart';

import '../../widgets/image_grid/image_item.dart';

class ImageGrid extends StatelessWidget {
  final List<String> images;

  ImageGrid(this.images);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ImageItem(images[i]),
      itemCount: images.length,
    );
  }
}
