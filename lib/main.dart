import 'package:flutter/material.dart';

import 'features/home/presentation/views/home_view.dart';

void main() {
  runApp(const AnimeApp());
}
class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView(),);
  }
}