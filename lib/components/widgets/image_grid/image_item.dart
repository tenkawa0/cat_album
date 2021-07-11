import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  final String image;

  ImageItem(this.image);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
