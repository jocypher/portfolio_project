import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      color: Colors.white,
      height: 500,
      child: const Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("About Me", style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text("A Flutter mobile app developer for Android and iOS.\nMy expertise includes personal projects that enhance my skills.\nI've also ventured into Java for Android, JavaScript (Node and Express) for backend, and Python for machine learning.\nMy journey encompasses diverse tech fields, reflecting my commitment to continuous growth. \nI value collaboration, bringing not only technical skills but also effective communication to projects.\nWith a passion for frontend, backend optimization, and AI, I strive to innovate and deliver impactful solutions.\nLet's create the future through technology together.",
              style: TextStyle(color: Colors.black, fontSize: 18),)
            ],
          ),
        ],
      ),
    );
  }
}