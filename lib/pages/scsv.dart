import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class scsv extends StatefulWidget {
  const scsv({super.key});

  @override
  State<scsv> createState() => _scsvState();
}

class _scsvState extends State<scsv> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
           Expanded(
            flex: 2,
            child: Center(
              child: 
                Container(
                  height: 200,
                  width: 200,
                  child: const Image(image: AssetImage("assets/LOGO.png"),
              // Container(
              //   color: Colors.blue,
              //   width: 80,
              //   height: 80,
              ),
                ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: double.infinity,
              // colors,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('NSBM'),
                    SizedBox(
                      // color: Colors.greenAccent,
                      height: 60,
                      width: width * 0.5,
                      child: Row(
                        children: [
                          // Expanded(
                          //     child: Container(
                          //       width: 9,
                          //       height:9,
                          //       color: Colors.white,
                          //     )),
                          // Expanded(
                          //     child: Container(
                          //       width: 9,
                          //       height: 9,
                          //       color: Colors.brown,
                          //     )),
                          // Expanded(
                          //     child: Container(
                          //       width:9,
                          //       height: 9,
                          //       color: Colors.cyan,
                          //     )),
                          square(color1: HexColor('#19589D')),
                          const square(color1: Colors.red),
                          const square(color1: Colors.green),
                          const square(color1: Colors.yellowAccent),
                          const square(color1: Colors.pinkAccent),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class square extends StatelessWidget {
  final Color color1;

  const square({super.key, required this.color1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          width: 15,
          height: 15,
          color: color1,
        ),
      ),
    );
  }
}
