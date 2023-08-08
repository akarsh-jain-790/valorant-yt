import 'package:flutter/material.dart';
import 'package:valorant_yt/screens/home_page.dart';
import 'package:valorant_yt/theme/app_theme.dart';

void main() async {
  runApp(
    MaterialApp(
      title: 'Valorant',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const HomePage(),
    ),
  );
}
