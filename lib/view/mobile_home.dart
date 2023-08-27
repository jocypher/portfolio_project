import 'package:flutter/material.dart';

class mobileHomePage extends StatefulWidget {
  const mobileHomePage({super.key});

  @override
  State<mobileHomePage> createState() => _mobileHomePageState();
}

class _mobileHomePageState extends State<mobileHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Mobile Screen"),
      ),
    );
  }
}
