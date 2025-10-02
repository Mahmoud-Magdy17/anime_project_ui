import 'package:flutter/material.dart';

import 'core/utils/custom_scaffold.dart';

void main() {
  runApp(const AnimeApp());
}

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CustomScaffold());
  }
}
