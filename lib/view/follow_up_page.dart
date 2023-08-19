import 'package:flutter/material.dart';

import '../global_variables/colors.dart';

class FollowUpPage extends StatelessWidget {
  const FollowUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Text("Follow Me ",style: TextStyle(color: headingElementTheme, fontSize: 30 , fontWeight: FontWeight.bold),),
         SizedBox(height: 30,),
        Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.asset("assets/icons8-medium-96.png",height: 70, width: 50, ),
          Image.asset("assets/icons8-github-logo-96.png",height: 70, width: 50,),
          Image.asset("assets/icons8-twitter-96.png",height: 70, width: 50,)
        ],)
      ]),
    );
  }
}