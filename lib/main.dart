import 'package:flutter/material.dart';
import 'package:uni_flutter/pages/counter_home.dart';
import 'package:uni_flutter/pages/home_page.dart';
import 'package:uni_flutter/pages/scsv.dart';
import 'package:wakelock/wakelock.dart';

import 'guessgame/home.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    Wakelock.enable();
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      home: homeguess(),
    );
  }
}
