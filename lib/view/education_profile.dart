import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';

class EducationProfile extends StatelessWidget {
  const EducationProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text("My Education", style:TextStyle(color: headingElementTheme, fontSize: 30)),
        SizedBox(height: 20),
        Text("About my Education profile",style:TextStyle(color: Colors.white, fontSize: 20)),
        SizedBox(height: 50),
        Row(
          children: [
            Image.network("assets/ghana-national-college-view-1.jpg",height: 400,),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("School",style:TextStyle(color: Colors.white)),
                Text("High School",style:TextStyle(color: Colors.white)),
                Text("I attended High School at Ghana National College in the year 2018.\ncompleted my Senior High School Certificate Examination in the year 2021.\nI studied General Arts in my Senior High School. P.R.O in the Student Representative Council.\nMath and Python tutor for my colleagues.",style:TextStyle(color: Colors.white))
              ],
            )
          ],
        )
      ],),
    );
  }
}