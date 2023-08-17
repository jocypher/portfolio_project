import 'package:flutter/material.dart';

class MyProjectsPage extends StatefulWidget {
  const MyProjectsPage({super.key});

  @override
  State<MyProjectsPage> createState() => _MyProjectsPageState();
}

class _MyProjectsPageState extends State<MyProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/icons8-android-os-48.png"),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Veterinary Resource Application"),
                    const Text("Built an app for School of Veterinary Medicine students,offering access to educational resources,\nnews updates, and easy contacts to lectures.Features include categorized study materials, announcements,\nfeedback channels, secure authentication,user profiles, notifications events calendar and slides section.\nPrioritize data security, usability, and cross-platform compatibility and a feedback section \nto get user response on the application."),
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red)
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
                    const Text("Veterinary Resource Application"),
                    const Text("Built an app for School of Veterinary Medicine students,offering access to educational resources,\nnews updates, and easy contacts to lectures.Features include categorized study materials, announcements,\nfeedback channels, secure authentication,user profiles, notifications events calendar and slides section.\nPrioritize data security, usability, and cross-platform compatibility and a feedback section \nto get user response on the application."),
    
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red)
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
                    const Text("Veterinary Resource Application"),
                    const Text("Built an app for School of Veterinary Medicine students,offering access to educational resources,\nnews updates, and easy contacts to lectures.Features include categorized study materials, announcements,\nfeedback channels, secure authentication,user profiles, notifications events calendar and slides section.\nPrioritize data security, usability, and cross-platform compatibility and a feedback section \nto get user response on the application."),
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red)
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
                    const Text("Veterinary Resource Application"),
                    const Text("Built an app for School of Veterinary Medicine students,offering access to educational resources,\nnews updates, and easy contacts to lectures.Features include categorized study materials, announcements,\nfeedback channels, secure authentication,user profiles, notifications events calendar and slides section.\nPrioritize data security, usability, and cross-platform compatibility and a feedback section \nto get user response on the application."),
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red)
                      ),
                      child: const Center(child: Text('View Code')),)
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