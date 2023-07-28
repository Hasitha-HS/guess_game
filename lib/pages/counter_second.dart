import 'package:flutter/material.dart';

class countersecondpage extends StatefulWidget {
  const countersecondpage({super.key});

  @override
  State<countersecondpage> createState() => _countersecondpageState();
}

class _countersecondpageState extends State<countersecondpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading:GestureDetector(child: const Icon(Icons.arrow_back_ios_sharp),
        onTap: (){Navigator.pop(context);},) ,
      ),
      body: const Center(child: Text('This is second page')),
    );
  }
}
