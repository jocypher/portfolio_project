import 'package:flutter/material.dart';
import 'package:portfolio_project/global_variables/colors.dart';

class appBar extends StatefulWidget {
  const appBar({super.key});

  @override
  State<appBar> createState() => _appBarState();
}

class _appBarState extends State<appBar> {
bool isExperienceHover = false;
bool isContactHover = false;
bool isHomeHover = false;
bool isAboutHover = false;
bool isGithubHover = false;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
      child: AppBar(
        elevation: 0,
        backgroundColor: backGroundColor,
        title: const Text('WillyJo\'s Portfolio'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25, letterSpacing: 1),
        centerTitle: false,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            InkWell(
              onTap: (){},
              onHover: (value) {
                setState(() {
                  isHomeHover = value;
                });
              },
              child:  Text("HOME", style: TextStyle(color: isHomeHover ? headingElementTheme : Colors.white, fontSize: 16),)),
            const SizedBox(width: 30,),
            InkWell(
              onTap: (){},
              onHover: (val){
                  setState(() {
                    isAboutHover = val;
                  });
              },
              child: Text("ABOUT",style: TextStyle(color:isAboutHover? headingElementTheme : Colors.white,fontSize: 16),)),
            const SizedBox(width: 30,),
            InkWell(
              onTap: (){},
              onHover: (val){
                setState(() {
                  isExperienceHover = val;
                });
              },
              child:  Text("EXPERIENCE",style: TextStyle(color: isExperienceHover? headingElementTheme : Colors.white,fontSize: 16),)),
            const SizedBox(width: 30),
    
            InkWell(
              onTap: (){},
              onHover: (value){
                setState(() {
                  isContactHover = value;
                });
              },
              child:  Text("CONTACT",style: TextStyle(color:isContactHover? headingElementTheme : Colors.white,fontSize: 16),)),
    
            const SizedBox(width: 50,),
    
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              child: InkWell(
                onTap: () {
                  
                },
                onHover: (value) {
                  setState(() {
                    isGithubHover = value;
                  });
                },
                child: Container(
                  height: 200,
                  width: 150,
                  decoration:  BoxDecoration(
                    color: isGithubHover ? Colors.black: headingElementTheme,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: isGithubHover ? headingElementTheme: Colors.black )
                  ),
                  child:  Center(child: const Text('Github Profile', 
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 1),
                  )),
                ),
              ),
            )
          
          ],)
        ]),
    );
  }
}