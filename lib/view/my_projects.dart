import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';

class MyProjectsPage extends StatefulWidget {
  const MyProjectsPage({super.key});

  @override
  State<MyProjectsPage> createState() => _MyProjectsPageState();
}

class _MyProjectsPageState extends State<MyProjectsPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(top:30.0),
               child: Text("My Projects", style: TextStyle(fontSize: 30, color: headingElementTheme, fontWeight: FontWeight.bold)),
             ),
            const Text("Projects worked on and developed", style: TextStyle(fontSize: 20),),
            SizedBox(height: height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/icons8-android-os-48.png"),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Veterinary Resource Application", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                    const Text("Built an app for School of Veterinary Medicine students,offering access to educational resources,\nnews updates, and easy contacts to lectures.Features include categorized study materials, announcements,\nfeedback channels, secure authentication,user profiles, notifications events calendar and slides section.\nPrioritize data security, usability, and cross-platform compatibility and a feedback section \nto get user response on the application.", style: TextStyle(letterSpacing: 1),),
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: headingElementTheme)
                      ),
                      child: const Center(child: Text('View Code')),),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Veterinary Resource Application", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                    const Text("Built an app for School of Veterinary Medicine students,offering access to educational resources,\nnews updates, and easy contacts to lectures.Features include categorized study materials, announcements,\nfeedback channels, secure authentication,user profiles, notifications events calendar and slides section.\nPrioritize data security, usability, and cross-platform compatibility and a feedback section \nto get user response on the application."),
    
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: headingElementTheme)
                      ),
                      child: const Center(child: Text('View Code')),)
                  ],
                ),
                Image.asset("assets/icons8-android-os-48.png"),
              ],
            ),
            const SizedBox(height: 100,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/icons8-android-os-48.png"),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Veterinary Resource Application", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                    const Text("Built an app for School of Veterinary Medicine students,offering access to educational resources,\nnews updates, and easy contacts to lectures.Features include categorized study materials, announcements,\nfeedback channels, secure authentication,user profiles, notifications events calendar and slides section.\nPrioritize data security, usability, and cross-platform compatibility and a feedback section \nto get user response on the application."),
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: headingElementTheme)
                      ),
                      child: const Center(child: Text('View Code')),)
                  ],
                ),
              ],
            ),
            const SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Veterinary Resource Application", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                    const Text("Built an app for School of Veterinary Medicine students,offering access to educational resources,\nnews updates, and easy contacts to lectures.Features include categorized study materials, announcements,\nfeedback channels, secure authentication,user profiles, notifications events calendar and slides section.\nPrioritize data security, usability, and cross-platform compatibility and a feedback section \nto get user response on the application."),
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: headingElementTheme)
                      ),
                      child: const Center(child: Text('View Code')),),
                      SizedBox(height: 20,)
                  ],
                ),
                Image.asset("assets/icons8-android-os-48.png"),
              ],
            ),
    
          ],
        ),
      ),
    );
  }
}