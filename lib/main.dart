import 'package:flutter/material.dart';
import 'package:portfolio_project/responsive_layout/responsive_layout.dart';
import 'package:portfolio_project/responsive_layout/tablet_screen.dart';

import 'package:portfolio_project/view/home_page.dart';
import 'package:portfolio_project/view/mobile_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
