import 'package:flutter/material.dart';
import './account.dart';

class Album with ChangeNotifier {
  final String? id;
  final Account author;
  final String title;
  final String description;
  final String thumbnail;
  final List<String> images;

  Album({
    required this.id,
    required this.author,
    required this.title,
    required this.description,
    required this.thumbnail,
    required this.images,
  });
}
