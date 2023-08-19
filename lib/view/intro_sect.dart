import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("Hi! I am, ", style: TextStyle(color: headingElementTheme, fontSize: 60),),
          const Text("Jonathan Wilchield Arthur", style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),),
           Text("I build Mobile and Web Application ", style: TextStyle(color: Colors.grey.shade600, fontSize: 52, fontWeight: FontWeight.bold),),
          SizedBox(height: size.height * 0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              height: size.height * 0.06,
              width: size.width *0.1,
              decoration: BoxDecoration(border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(8)),
              child: const Center(child: Text('Get In Touch', style: TextStyle(color: Colors.white, fontSize: 18),)),
            ), 
             Text("Student developer , growing while expanding my knowledge in tech", style: TextStyle(fontSize: 20, color: headingElementTheme),),
          ],)
        ]),
    );
  }
}