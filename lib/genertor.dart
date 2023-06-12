import 'dart:typed_data';


import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class genertor extends StatefulWidget {
  const genertor({super.key});

  @override
  State<genertor> createState() => _genertorState();
}

class _genertorState extends State<genertor> {

  final audiopalyer = AudioPlayer();

  bool isplaying = false;
  Duration duration = Duration.zero;
  Duration postion = Duration.zero;

  String buttontext = "start cleaning";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cleaner'),
      ),

      
      body: Column(
        children: [
          

          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),

              child: SizedBox(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 3,
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                    onPressed: () async {






                      
                           if(isplaying){
                             await audiopalyer.pause();
                             isplaying =false;

                             setState(() {

                               buttontext = "start cleaning";
                             });

                           }else{


                             audiopalyer.play(AssetSource('file.mp3'));
                             isplaying =true;

                             setState(() {

                               buttontext = "stop";
                             });


                            
                           }
                      
                    },
                    child:  Text( buttontext),
                  ),
                ),

              ),
            ),

          ))
           
          ,
        ],
      ),
    );
  }
}
