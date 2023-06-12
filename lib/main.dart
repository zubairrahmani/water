import 'package:flutter/material.dart';
import 'package:sound/settings.dart';

import 'auto.dart';
import 'genertor.dart';

void main() {
  runApp(
         MaterialApp(home: myapp(),)

  );
}

 int myindex = 0;
List<Widget> widetlist = const [

  genertor(), auto(),settings()

];

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: widetlist[myindex],
      ) ,




      bottomNavigationBar: BottomNavigationBar(
          onTap: (index){


            setState(() {

              myindex = index;

            });


          },
          currentIndex: myindex,
          items: const [

        BottomNavigationBarItem(icon: Icon(Icons.waves),label: 'Generator'),
        BottomNavigationBarItem(icon: Icon(Icons.auto_fix_high),label: 'Auto'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings')
      ]),


    );


  }
}
