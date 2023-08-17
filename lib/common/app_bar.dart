import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';

class appBar extends StatefulWidget {
  const appBar({super.key});

  @override
  State<appBar> createState() => _appBarState();
}

class _appBarState extends State<appBar> {
  

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      elevation: 10,
      backgroundColor: backGroundColor,
      title: Text('Portfolio project'),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      centerTitle: false,
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
            const Text("Home", style: TextStyle(color:Colors.white),),
            const SizedBox(width: 10,),
            Text("About",style: TextStyle(color:Colors.white),),
            const SizedBox(width: 10,),
            Text("Experience",style: TextStyle(color:Colors.white),),
            const SizedBox(width: 10,),
            Text("Contact",style: TextStyle(color:Colors.white),),
            const SizedBox(width: 10,),
            Container(
              height: 35,
              width: 90,
              padding: EdgeInsets.all(5),
              decoration:  BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(3)
              ),
              child: Center(child: const Text('Resume', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),)),
            )
        
          ],),
        )
      ]);
  }
}