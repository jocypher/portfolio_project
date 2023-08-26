import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "Contact Me",
        style: TextStyle(
            color: headingElementTheme,
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 5,
      ),
      const Text(
        "You can reach me out on the following platform",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      const SizedBox(
        height: 50,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(children: [
            Image.asset("assets/icons8-phonecall-50.png", color: Colors.white),
            const SizedBox(height: 5),
            const Text(
              "Call Me on",
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              "0551348027",
              style: TextStyle(color: Colors.white),
            )
          ]),
          Column(children: [
            Image.asset("assets/icons8-whatsapp-logo-48.png"),
            const SizedBox(height: 5),
            const Text(
              "WhatsApp Me on",
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              "0595069933",
              style: TextStyle(color: Colors.white),
            )
          ]),
          Column(children: [
            Image.asset("assets/icons8-email-50.png", color: Colors.white),
            const SizedBox(height: 5),
            const Text(
              "Email Me at",
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              "arthurwilchield@gmail.com",
              style: TextStyle(color: Colors.white),
            ),
          ])
        ],
      )
    ]);
  }
}
