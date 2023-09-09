import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';

class SkillsNeeded {
  final String name;
  final String icon;
  final String appDescription;
  bool isSkillHover;

  SkillsNeeded({
    required this.name,
    required this.icon,
    required this.appDescription,
    this.isSkillHover = false,
  });
}

class SkillsSection extends StatefulWidget {
  const SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final List<SkillsNeeded> skillsSet = [
      SkillsNeeded(
        name: "Flutter",
        icon: "assets/icons8-flutter-48.png",
        appDescription: "I use this Framework for building mobile apps",
      ),
      SkillsNeeded(
        name: "Dart",
        icon: "assets/icons8-dart-48.png",
        appDescription: "I use it to write mobile apps",
      ),
      SkillsNeeded(
        name: "Firebase",
        icon: "assets/icons8-firebase-48.png",
        appDescription: "I use it to build the backend of my application",
      ),
      SkillsNeeded(
        name: "Android Dev",
        icon: "assets/icons8-android-os-48.png",
        appDescription: "I use it for building android mobile apps",
      ),
      SkillsNeeded(
        name: "Java",
        icon: "assets/icons8-java-48.png",
        appDescription: "I use it to write android mobile code",
      ),
      SkillsNeeded(
        name: "HTML",
        icon: "assets/icons8-html-logo-48.png",
        appDescription: "I use it to build static web pages",
      ),
      SkillsNeeded(
        name: "CSS",
        icon: "assets/icons8-css-logo-48.png",
        appDescription: "I use it to design static web pages",
      ),
      SkillsNeeded(
        name: "JavaScript",
        icon: "assets/icons8-javascript-48.png",
        appDescription: "I use it to write backend code",
      ),
      SkillsNeeded(
        name: "Node Js",
        icon: "assets/icons8-nodejs-48.png",
        appDescription: "I use it to build the backend of my application",
      ),
      SkillsNeeded(
        name: "Python",
        icon: "assets/icons8-python-48.png",
        appDescription:
            "I use it for modeling personal projects on data science",
      ),
      SkillsNeeded(
        name: "Git",
        icon: "assets/icons8-git-logo-48.png",
        appDescription: "I use it for managing and keeping track of my project",
      ),
      SkillsNeeded(
        name: "Github",
        icon: "assets/icons8-github-30.png",
        appDescription: "I use it for storing my code, publishing my code",
      )
    ];

    int crossAxisCount = (size.width > 600) ? 3 : 1;

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return Container(
          padding: const EdgeInsets.fromLTRB(50, 20, 0, 0),
          color: const Color.fromARGB(233, 255, 255, 255),
          child: Column(
            children: [
              Text(
                "My Skills",
                style: TextStyle(
                  fontSize: 30,
                  color: headingElementTheme,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.04),
              GridView.builder(
                shrinkWrap: true,
                itemCount: skillsSet.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 3,
                ),
                itemBuilder: ((BuildContext context, int index) {
                  final skillsSetItem = skillsSet[index];
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 150, top: 3),
                        child: Image.asset(
                          skillsSetItem.icon,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.1,
                        child: Container(
                          height: size.height * 0.33,
                          width: size.width * 0.25,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                skillsSetItem.name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                skillsSetItem.appDescription,
                                style: const TextStyle(letterSpacing: 1),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                }),
              ),
            ],
          ),
        );
      } else {
        return Container(
          width: double.infinity,
          color: const Color.fromARGB(233, 255, 255, 255),
          child: Column(
            children: [
              Text(
                "My Skills",
                style: TextStyle(
                  fontSize: 30,
                  color: headingElementTheme,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Column(
                children: skillsSet.map((skillsSetItem) {
                  return Column(
                    children: [
                      Image.asset(
                        skillsSetItem.icon,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      Container(
                        height: size.height * 0.33,
                        width: size.width * 0.7,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              skillsSetItem.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              skillsSetItem.appDescription,
                              style: const TextStyle(letterSpacing: 1),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.04),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        );
      }
    });
  }
}

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return const SkillsSection();
  }
}
