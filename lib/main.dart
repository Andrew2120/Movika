import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movika/core/service/services_locator.dart';
import 'package:movika/movie/presentation/pages/movie_screen.dart';

void main() {
  ServiceLocator().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movika',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainMoviesScreen(),
    );
  }
}
