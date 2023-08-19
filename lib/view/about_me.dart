import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';


class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      color: Colors.white,
      height: 600,
      child:  Row(
  
        children: [
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("About Me", style: TextStyle(fontSize: 40, color: headingElementTheme, fontWeight: FontWeight.bold, ),),
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






