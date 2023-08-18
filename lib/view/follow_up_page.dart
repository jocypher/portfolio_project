import 'package:flutter/material.dart';

class FollowUpPage extends StatelessWidget {
  const FollowUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Text("Follow Me "),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.asset("assets/icons8-medium-96.png"),
          Image.asset("assets/icons8-github-logo-96.png"),
          Image.asset("assets/icons8-twitter-96.png")
        ],)
      ]),
    );
  }
}