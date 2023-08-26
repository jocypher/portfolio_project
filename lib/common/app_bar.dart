import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class AppBar extends StatefulWidget {
  const AppBar({super.key});

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  bool isExperienceHover = false;
  bool isContactHover = false;
  bool isHomeHover = false;
  bool isAboutHover = false;
  bool isGithubHover = false;
  final Uri _githubUri = Uri.parse("https://github.com/jocypher");

  void _launchGithubProfile() async {
    if (!await launchUrl(_githubUri)) {
      throw Exception('couldn\'t lauch $_githubUri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: AppBar(
          elevation: 0,
          backgroundColor: backGroundColor,
          title: const Text('WillyJo\'s Portfolio'),
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 25, letterSpacing: 1),
          centerTitle: false,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: _launchGithubProfile,
                    onHover: (value) {
                      setState(() {
                        isHomeHover = value;
                      });
                    },
                    child: Text(
                      "HOME",
                      style: TextStyle(
                          color:
                              isHomeHover ? headingElementTheme : Colors.white,
                          fontSize: 16),
                    )),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                    onTap: () {},
                    onHover: (val) {
                      setState(() {
                        isAboutHover = val;
                      });
                    },
                    child: Text(
                      "ABOUT",
                      style: TextStyle(
                          color:
                              isAboutHover ? headingElementTheme : Colors.white,
                          fontSize: 16),
                    )),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                    onTap: () {},
                    onHover: (val) {
                      setState(() {
                        isExperienceHover = val;
                      });
                    },
                    child: Text(
                      "EXPERIENCE",
                      style: TextStyle(
                          color: isExperienceHover
                              ? headingElementTheme
                              : Colors.white,
                          fontSize: 16),
                    )),
                const SizedBox(width: 30),
                InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isContactHover = value;
                      });
                    },
                    child: Text(
                      "CONTACT",
                      style: TextStyle(
                          color: isContactHover
                              ? headingElementTheme
                              : Colors.white,
                          fontSize: 16),
                    )),
                const SizedBox(
                  width: 50,
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 3),
                  child: InkWell(
                    onTap: _launchGithubProfile,
                    onHover: (value) {
                      setState(() {
                        isGithubHover = value;
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          color: isGithubHover
                              ? Colors.black
                              : headingElementTheme,
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                              color: isGithubHover
                                  ? headingElementTheme
                                  : Colors.black)),
                      child: const Center(
                          child: Text(
                        'Github Profile',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1),
                      )),
                    ),
                  ),
                )
              ],
            )
          ]),
    );
  }
}
