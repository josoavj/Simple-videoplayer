
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Files extends StatefulWidget {
  const Files({super.key});

  @override
  State<Files> createState() => _FilesState();
}

class _FilesState extends State<Files> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Your files",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              color: Colors.white),),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: false,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        children:[
          SearchBar(
          hintText: "Search video",
          leading:  const Icon(CupertinoIcons.search, size: 25,),
          onTap: (){},
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 900,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 20,
                itemBuilder: (context, index){
                  return GestureDetector(
                    onTap: (){},
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10,),
                      alignment: Alignment.center,
                      height: 95,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("${index +1}"),
                    ),
                  );
                }
            ),
          )
        ]
      ),
    );
  }
}
