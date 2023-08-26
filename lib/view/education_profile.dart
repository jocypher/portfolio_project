import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';

class EducationProfile extends StatelessWidget {
  const EducationProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 100),
      child: Column(
        children: [
        Text("My Education", style:TextStyle(color: headingElementTheme, fontSize: 30)),
        const SizedBox(height: 10),
        const Text("About my Education profile",style:TextStyle(color: Colors.white, fontSize: 20)),
        const SizedBox(height: 50),
        Row(
          children: [
            Image.network("assets/ghana-national-college-view-1.jpg",height: 400,),
            const SizedBox(width: 70,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("School",style:TextStyle(color: headingElementTheme.withOpacity(1),fontSize: 20 )),
                const Text("High School",style:TextStyle(color: Colors.white, fontSize: 16)),
                const SizedBox(height: 20),
                const Text("I attended High School at Ghana National College in the year 2018.\ncompleted my Senior High School Certificate Examination in the year 2021.\nI studied General Arts in my Senior High School. P.R.O in the Student Representative Council.\nMath and Python tutor for my colleagues.",style:TextStyle(color: Colors.white, letterSpacing: 1))
              ],
            )
          ],
        )
      ],),
    );
  }
}