import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './components/pages/home.dart';
import './components/pages/album_detail.dart';

import './models/albums.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Albums(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.indigoAccent[100],
          accentColor: Colors.blueGrey[600],
          fontFamily: 'NotoSansJP',
          textTheme: TextTheme(
            headline6: TextStyle(
              fontWeight: FontWeight.w500,
            ),
            bodyText1: TextStyle(
              fontWeight: FontWeight.w300,
            ),
            bodyText2: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
        home: Home(),
        routes: {
          AlbumDetail.routeName: (_) => AlbumDetail(),
        },
      ),
    );
  }
}
