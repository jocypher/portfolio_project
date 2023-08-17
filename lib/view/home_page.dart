import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';
import 'package:portfolio_project/view/about_me.dart';
import 'package:portfolio_project/view/education_profile.dart';
import 'package:portfolio_project/view/intro_sect.dart';
import 'package:portfolio_project/view/my_projects.dart';
import 'package:portfolio_project/view/skills.dart';

import '../common/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return   Scaffold(
      backgroundColor: backGroundColor,
      appBar: const PreferredSize(preferredSize: Size.fromHeight(70), child: appBar()),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: height * 0.18),
            const IntroSection(),
            SizedBox(height: height * 0.15),
            const AboutMe(),
            SizedBox(height: height * 0.18),
            const EducationProfile(),
            SizedBox(height: height * 0.18),
            Text("My Skills", style: TextStyle(fontSize: 20),),
            const SkillsPage(),
            SizedBox(height: height * 0.18),
            const Text("My Projects", style: TextStyle(fontSize: 30)),
            const Text("Projects worked on and developed"),
            SizedBox(height: height * 0.1),
            const MyProjectsPage(),
            SizedBox(height: height * 0.1),
          ],
        ),
      ),
    );
  }
}