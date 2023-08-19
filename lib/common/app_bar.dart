import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';
import 'package:portfolio_project/view/home_page.dart';

class appBar extends StatefulWidget {
  const appBar({super.key});

  @override
  State<appBar> createState() => _appBarState();
}

class _appBarState extends State<appBar> {
  

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      
      elevation: 0,
      backgroundColor: backGroundColor,
      title: Text('Portfolio project'),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      centerTitle: false,
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
            const Text("Home", style: TextStyle(color:Colors.white, fontSize: 16),),
            const SizedBox(width: 10,),
            const Text("About",style: TextStyle(color:Colors.white,fontSize: 16),),
            const SizedBox(width: 10,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              child: const Text("Experience",style: TextStyle(color:Colors.white,fontSize: 16),)),
            const SizedBox(width: 10,),
            const Text("Contact",style: TextStyle(color:Colors.white,fontSize: 16),),
            const SizedBox(width: 10,),
            Container(
              height: 40,
              width: 100,
              padding: const EdgeInsets.all(5),
              decoration:  BoxDecoration(
                color: headingElementTheme,
                borderRadius: BorderRadius.circular(3)
              ),
              child: const Center(child: Text('Resume', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),)),
            )
        
          ],),
        )
      ]);
  }
}