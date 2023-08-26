import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../global_variables/colors.dart';

class FollowUpPage extends StatefulWidget {
  const FollowUpPage({super.key});

  @override
  State<FollowUpPage> createState() => _FollowUpPageState();
}

class _FollowUpPageState extends State<FollowUpPage> {
  List<String> uriLinks = [
    "https://medium.com/@arthurwilchield",
    "https://www.linkedin.com/in/jonathan-arthur93b239228",
    "@wilchield",
    "https://github.com/jocypher"
  ];
  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "Follow Me ",
        style: TextStyle(
            color: headingElementTheme,
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              _launchURL(uriLinks[0]);
            },
            child: Image.asset(
              "assets/icons8-medium-96.png",
              height: 70,
              width: 50,
            ),
          ),
          InkWell(
            onTap: () {
              _launchURL(uriLinks[3]);
            },
            child: Image.asset(
              "assets/icons8-github-logo-96.png",
              height: 70,
              width: 50,
            ),
          ),
          InkWell(
            onTap: () {
              _launchURL(uriLinks[2]);
            },
            child: Image.asset(
              "assets/icons8-twitter-96.png",
              height: 70,
              width: 50,
            ),
          ),
          InkWell(
            onTap: () {
              _launchURL(uriLinks[1]);
            },
            child: Image.asset(
              "assets/icons8-linkedin-96.png",
              height: 70,
              width: 50,
            ),
          )
        ],
      )
    ]);
  }
}
