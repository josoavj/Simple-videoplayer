import 'package:flutter/material.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "News & Ads",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}
