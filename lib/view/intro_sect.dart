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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30), // Responsive padding

      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final size = MediaQuery.of(context).size;
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
                    fontSize: constraints.maxWidth > 600
                        ? 52
                        : 30, // Adjust font size
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
                        child: Center(
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
        },
      ),
    );
  }
}
