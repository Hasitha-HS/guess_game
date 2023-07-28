import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    Wakelock.enable();
    return Scaffold(
      //
      //   appBar: AppBar(backgroundColor: Colors.purple,),
      //   body:
      //   // GestureDetector(
      //   //   onDoubleTap: (){
      //   //     print('DT');
      //   //   } ,
      //   //   child:
      //   Container(
      //       color: Colors.purple,
      //       margin: const EdgeInsets.all(10),
      //       width: double.infinity,
      //       height: 200,
      //       child: const Center(
      //         child: Text(
      //           'Hello',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 30,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),
      //       // child: ElevatedButton(
      //       //   onPressed: () {},
      //       //   style: ElevatedButton.styleFrom(
      //       //     backgroundColor: Colors.red,
      //       //     shape: const RoundedRectangleBorder(
      //       //       borderRadius: BorderRadius.all(
      //       //         Radius.circular(10),
      //       //       ),
      //       //     ),
      //       //   ),
      //       //   child: const Text(
      //       //     'Click Me!',
      //       //     style: TextStyle(color: Colors.yellow, fontSize: 20),
      //       //   ),
      //       // ),
      //
      //     // ),
      //   ),
      // );
      // // body: Center(
      // //   child: ElevatedButton(
      // //     onPressed: (){
      // //       Size size = MediaQuery.of(context).size;
      // //       debugPrint("Width : ${size.width}");
      // //       debugPrint("Height : ${size.height}");
      // //
      // //     },
      // //     child: const Icon(Icons.ads_click)
      // //   ),
      // //   ),
      //
      // // appBar: AppBar(
      // //   title: const Text('AppBar'),
      // // )
      body: Column(
        children: [
          Container(
            height: h * 0.75,
            width: double.infinity,
            // color: Colors.red,
            child: Center(
              child: Container(
                height: 70,
                width: 70,
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('NSBM',style: TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 2,
                      height: 2,
                    ),
                    Container(
                      height: 16,
                      width: 16,
                      color: Colors.greenAccent,
                    ),
                    const SizedBox(
                      width: 2,
                      height: 2,
                    ),
                    Container(
                      height: 16,
                      width: 16,
                      color: Colors.lightGreen,
                    ),
                    const SizedBox(
                      width: 2,
                      height: 2,
                    ),
                    Container(
                      height: 16,
                      width: 16,
                      color: Colors.tealAccent,
                    ),
                    const SizedBox(
                      width: 2,
                      height: 2,
                    ),
                    Container(
                      height: 16,
                      width: 16,
                      color: Colors.lightGreenAccent,
                    ),
                  ],
                ),


              ],
            )
            // height: h * 0.25,
            // width: double.infinity,
            // child: Row(
            //   children: [
            //     Center(
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         // crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Text('NSBM'),
            //         ],
            //       ),
            //     )
            //   ],
            // ),
          )
        ],
      ),
    );
  }
}
