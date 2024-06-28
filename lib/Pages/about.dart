import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Exit Application"),
                    content: const Text("Are you sure you want to quit?"),
                    actions: [
                      TextButton(
                        child: const Text("Cancel"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text("Quit"),
                        onPressed: () {
                          Navigator.of(context).pop();
                          // Perform quit operation here
                          // For example, you can use SystemNavigator.pop() to exit the application
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.info_circle,
              color: Colors.blueAccent,
              size: 30,
            ),
            Text(
              "About Us",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20,),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "VideoPlayer App",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Colors.black26,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: "    Version 1.0",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Colors.black26,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Developed by Josoa886 (GitHub)",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: Colors.black26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.info_circle, color: Colors.blueAccent, size: 30,),
            Text("About Us", style: TextStyle(fontFamily: 'Poppins',fontSize: 20,fontWeight: FontWeight.normal, color: Colors.blueAccent),),
            SizedBox(height: 20,),
            Text.rich(TextSpan(
              children: [
                TextSpan(text: "VideoPlayer App", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, color: Colors.black26, fontSize: 15)),
                TextSpan(text: "    Version 1.0", style: TextStyle(fontFamily: 'Poppins', fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black26))
              ]
            ),),
            Text("Developped by Josoa886 (GitHub)", style: TextStyle(fontFamily: 'Poppins', fontSize: 15, color: Colors.black26),),
          ],
        ),
      ),
    );
  }
