import 'package:flutter/foundation.dart';
import './album.dart';
import './account.dart';

class Albums with ChangeNotifier {
  //Mock Data
  List<Album> _items = [
    Album(
      id: 'sample',
      author: Account(id: 'user1', name: 'Test User'),
      title: 'Sample Album',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      thumbnail: 'assets/images/thumbnail1.jpg',
      images: [
        'assets/images/image1-1.jpg',
        'assets/images/image1-2.jpg',
        'assets/images/image1-1.jpg',
        'assets/images/image1-2.jpg',
        'assets/images/image1-1.jpg',
        'assets/images/image1-2.jpg',
        'assets/images/image1-1.jpg',
        'assets/images/image1-2.jpg',
        'assets/images/image1-1.jpg',
        'assets/images/image1-2.jpg',
        'assets/images/image1-1.jpg',
        'assets/images/image1-2.jpg',
        'assets/images/image1-1.jpg',
        'assets/images/image1-2.jpg',
      ],
    ),
    Album(
      id: 'サンプル',
      author: Account(id: 'user2', name: 'テスト　ユーザ'),
      title: 'サンプル　アルバム',
      description: '文章はアタリです。文章はアタリです。',
      thumbnail: 'assets/images/thumbnail2.jpg',
      images: ['assets/images/image2-1.jpg', 'assets/images/image2-2.jpg'],
    ),
  ];

  List<Album> get items {
    return [..._items];
  }

  Album find(String id) {
    return _items.firstWhere((element) => element.id == id);
  }
}
