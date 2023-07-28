import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

import 'counter_second.dart';

class counterhome extends StatefulWidget {
  // int count = 0;
  counterhome({super.key});

  @override
  _counterhomeState createState() => _counterhomeState();
}

class _counterhomeState extends State<counterhome> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    // Wakelock.enable();

    return Scaffold(
      appBar: AppBar(
        title: const Text ('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push( context,MaterialPageRoute(builder: (context)=> const countersecondpage()));
          } , child: const Text('go to second page'),
        ),
        // child: Padding(
        //   padding: const EdgeInsets.only(top: 200),
        //   child: Column(
        //     children: [
        //       // const Align(
        //       //   alignment: Alignment.bottomCenter,
        //       // ),
        //       const Text(
        //         'Head Count',
        //         style: TextStyle(fontSize: 20),
        //       ),
        //        Text(
        //         "$count",
        //         style: const TextStyle(fontSize: 40),
        //       ),
        //       ElevatedButton(
        //         onPressed: () {
        //           setState(() {
        //             count = count+1;
        //           });
        //         },
        //         child: const Text(
        //           'Count',
        //           style: TextStyle(fontSize: 40),
        //         ),
        //       ),
        //       ElevatedButton(
        //         onPressed: () {
        //           setState(() {
        //             count = 0;
        //           });
        //         },
        //         child: const Text('Reset'),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
