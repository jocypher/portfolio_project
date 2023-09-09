import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({super.key});

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  bool isResumeHover = false;
  bool isDescribeHover = false;
  bool isProfileHover = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final size = MediaQuery.of(context).size;
        if (constraints.maxWidth > 600) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi! I am, ",
                style: TextStyle(color: headingElementTheme, fontSize: 60),
              ),
              const Text(
                "Jonathan Wilchield Arthur",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {},
                onHover: (val) {
                  setState(() {
                    isProfileHover = val;
                  });
                },
                child: Text(
                  "I build Mobile and Web Application ",
                  style: TextStyle(
                    color: isProfileHover
                        ? headingElementTheme
                        : Colors.grey.shade600,
                    fontSize: constraints.maxWidth > 600 ? 52 : 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    child: InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          isResumeHover = value;
                        });
                      },
                      child: Container(
                        height: size.height * 0.06,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: isResumeHover
                              ? headingElementTheme
                              : Colors.black,
                          border: Border.all(
                              color: isResumeHover
                                  ? Colors.black
                                  : headingElementTheme),
                        ),
                        child: const Center(
                            child: Text('View Resume',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18))),
                      ),
                    ),
                  ),
                  InkWell(
                    onHover: (val) {
                      setState(() {
                        isDescribeHover = val;
                      });
                    },
                    onTap: () {},
                    child: Text(
                      "Student developer, growing while expanding my knowledge in tech",
                      style: TextStyle(
                        fontSize: constraints.maxWidth > 600
                            ? 20
                            : 16, // Adjust font size
                        color: isDescribeHover
                            ? headingElementTheme
                            : Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi! I am, ",
                style: TextStyle(color: headingElementTheme, fontSize: 60),
              ),
              const Text(
                "Jonathan Wilchield Arthur",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {},
                onHover: (val) {
                  setState(() {
                    isProfileHover = val;
                  });
                },
                child: Text(
                  "I build Mobile and Web Application ",
                  style: TextStyle(
                    color: isProfileHover
                        ? headingElementTheme
                        : Colors.grey.shade600,
                    fontSize: constraints.maxWidth > 600 ? 52 : 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              AnimatedContainer(
                duration: const Duration(seconds: 2),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isResumeHover = value;
                    });
                  },
                  child: Container(
                    height: size.height * 0.06,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                      color: isResumeHover ? headingElementTheme : Colors.black,
                      border: Border.all(
                          color: isResumeHover
                              ? Colors.black
                              : headingElementTheme),
                    ),
                    child: Center(
                        child: Text('View Resume',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    constraints.maxWidth > 600 ? 18 : 12))),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              InkWell(
                onHover: (val) {
                  setState(() {
                    isDescribeHover = val;
                  });
                },
                onTap: () {},
                child: Text(
                  "Student developer, growing while expanding my knowledge in tech",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: constraints.maxWidth > 600
                        ? 20
                        : 13, // Adjust font size
                    color: isDescribeHover
                        ? headingElementTheme
                        : Colors.grey.shade600,
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
