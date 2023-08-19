import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';
import 'package:portfolio_project/view/about_me.dart';
import 'package:portfolio_project/view/contact_page.dart';
import 'package:portfolio_project/view/education_profile.dart';
import 'package:portfolio_project/view/follow_up_page.dart';
import 'package:portfolio_project/view/intro_sect.dart';
import 'package:portfolio_project/view/my_projects.dart';
import 'package:portfolio_project/view/skills.dart';
import 'package:portfolio_project/common/app_bar.dart';

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
      appBar:  const PreferredSize(preferredSize: Size.fromHeight(100), child: appBar()),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.1),
            const IntroSection(),
            SizedBox(height: height * 0.13),
            const AboutMe(),
            SizedBox(height: height * 0.13),
            const EducationProfile(),
            SizedBox(height: height * 0.13),
            const SkillsPage(),
            SizedBox(height: height * 0.13),
            const MyProjectsPage(),
            SizedBox(height: height * 0.13),
            const ContactPage(),
            SizedBox(height: height * 0.13),
            const FollowUpPage()
          ],
        ),
      ),
    );
  }
}