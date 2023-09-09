import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 400,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "About Me",
                style: TextStyle(
                  fontSize: constraints.maxWidth > 600 ? 30 : 18,
                  color: headingElementTheme,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              Text(
                "A Flutter mobile app developer for Android and iOS. My expertise includes personal projects that enhance my skills. ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: constraints.maxWidth > 600 ? 18 : 10,
                    letterSpacing: constraints.maxWidth > 600 ? 2 : 1),
                textAlign: TextAlign.center,
              ),
              Text(
                "I've also ventured into Java for Android, JavaScript (Node and Express) for backend, and Python for machine learning.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: constraints.maxWidth > 600 ? 18 : 10,
                    letterSpacing: constraints.maxWidth > 600 ? 2 : 1),
                textAlign: TextAlign.center,
              ),
              Text(
                "My journey encompasses diverse tech fields, reflecting my commitment to continuous growth. I value collaboration,",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: constraints.maxWidth > 600 ? 18 : 10,
                    letterSpacing: constraints.maxWidth > 600 ? 2 : 1),
                textAlign: TextAlign.center,
              ),
              Text(
                "not only technical skills but also effective communication to projects. With a passion for frontend, backend optimization, and AI,",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: constraints.maxWidth > 600 ? 18 : 10,
                    letterSpacing: constraints.maxWidth > 600 ? 2 : 1),
                textAlign: TextAlign.center,
              ),
              Text(
                "I strive to innovate and deliver impactful solutions. Let's create the future through technology together.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: constraints.maxWidth > 600 ? 18 : 10,
                    letterSpacing: constraints.maxWidth > 600 ? 2 : 1),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
