import 'package:flutter/material.dart';

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
          const Text("Hi ! I am, ", style: TextStyle(color: Colors.blueAccent, fontSize: 40),),
          const Text("Jonathan Wilchield Arthur", style: TextStyle(color: Colors.white, fontSize: 80, fontWeight: FontWeight.bold),),
          const Text("I build Mobile and Web Application ", style: TextStyle(color: Colors.grey, fontSize: 72, fontWeight: FontWeight.bold),),
          SizedBox(height: size.height * 0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              height: size.height * 0.06,
              width: size.width *0.1,
              decoration: BoxDecoration(border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(8)),
              child: const Center(child: Text('Get In Touch', style: TextStyle(color: Colors.white),)),
            ), 
            const Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text("Student developer , growing while expanding my knowledge in tech", style: TextStyle(fontSize: 20, color: Colors.white),),
            ),
          ],)
        ]),
    );
  }
}