import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Column(
        children: [
          const Text("Contact Me"),
          const Text("You can reach me out on the following platform"),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Column(children: [
              Image.asset("assets/icons8-phonecall-50.png"),
              const Text("Call Me on"),
              const Text("0551348027")

            ]),
            Column(children: [
              Image.asset("assets/icons8-whatsapp-logo-48.png"),
              const Text("WhatsApp Me on"),
              const Text("0595069933")
              
            ]),
            Column(children: [
              Image.asset("assets/icons8-email-50.png"),
              const Text("Email Me at"),
              const Text("arthurwilchield@gmail.com"),
              
            ])
          ],)
        ]
        ),
    );
  }
}