import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:videoplayer/library/bottom_navbar.dart';

class Presentation extends StatefulWidget {
  const Presentation({super.key});

  @override
  State<Presentation> createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  @override
  void initState(){
    goto();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.blueAccent
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.video_camera, size: 120, color: Colors.white,),
            Text(
              "WELCOME",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "to VidPlay",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
  // Pour afficher la page d'acceuil
  Future<void> goto() async{
    await Future.delayed( const Duration(seconds: 5));
    var pushReplacement = Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
  }
}
