import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;
import 'model.dart';

TextEditingController _controller = TextEditingController();

class homeguess extends StatefulWidget {
  homeguess({super.key});

  @override
  State<homeguess> createState() => _homeguessState();
}

class _homeguessState extends State<homeguess> {
  // List<model>? _list = [];
  // String text;
  // static String getnum = '/productsById/102';
  model? _model;

  static String baseurl = 'http://192.168.43.83:8080';
  static String getnum = '/check/';
  static String getprodlist = "/products";

  @override
  void initState() {
    super.initState();
    // _fetchdatalist();
    _fetchdata();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _fetchdata() async {
    _model = (await ApiService().fetchdata())!;
    // _list = (await ApiService().fetchdatalist())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  // void _fetchdatalist() async {
  //   // _model = (await ApiService().fetchdata())!;
  //   _list = (await ApiService().fetchdata())! as List<model>?;
  //   Future.delayed(const Duration(seconds: 1)).then((value)=>setState(() {}));
  // }

  @override
  Widget build(BuildContext context) {
    // String val = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess Game'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: 1000,
                height: 200,
                child: const Image(
                  image: AssetImage('assets/detect.jpeg'),
                )),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 100,
              child: TextField(
                controller: _controller,
                onSubmitted: (String val) {},
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () async {
                  print(_homeguessState.baseurl + _homeguessState.getnum);
                  http.Response response = await http.get(Uri.parse(
                      _homeguessState.baseurl +
                          _homeguessState.getnum +
                          _controller.text.toString()));
                  print(response.body);
                  if (response.body == true || response.body == "true") {
                    // print(_controller.text);
                    // print(_model?.name);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => rightguess()));
                  } else {
                    // print(_controller.text);
                    // print(_model?.name);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const wrongguess()));
                  }
                },
                child: const Text('submit'))
          ],
        ),
      ),
    );
  }
}

class wrongguess extends StatelessWidget {
  const wrongguess({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Icon(
                Icons.thumb_down_alt_outlined,
                color: Colors.red,
                size: 300,
              ),
              Text(
                'Your Guess Is Wrong',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String _getData = '';
String _getDatafull = '';

class rightguess extends StatefulWidget {
  const rightguess({super.key});

  @override
  State<rightguess> createState() => _rightguessState();
}

class _rightguessState extends State<rightguess> {
  Future<String> getdata() async {
    print(_homeguessState.baseurl + _homeguessState.getprodlist);
    var url = Uri.parse(_homeguessState.baseurl + _homeguessState.getprodlist);
    http.Response response = await http.get(url);
    print(response.body);
    setState(() {
      _getDatafull=response.body;
      // _getData = jsonDecode(response.body)[0]["name"].toString();
    });
setState(() {
  _getData="";
});
    for(var res in jsonDecode(response.body) ){
      setState(() {
        _getData+="\n ${res["id"]} - ${res["name"]}";
      });
    }

    //for eeach

    return jsonDecode(response.body);
  }

  @override
  void initState() {;
    getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center, child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text( _getDatafull),
              SizedBox(height: 50,),
              Text( _getData),
            ],
          )),
      // body: Center(
      //   child: Padding(
      //     padding: EdgeInsets.all(30.0),
      //     child: Column(
      //       children: [
      //         Icon(
      //           Icons.thumb_up_alt_outlined,
      //           color: Colors.green,
      //           size: 300,
      //         ),
      //         Text(
      //           'Your Guess Is Right',
      //           style: TextStyle(fontSize: 20),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

//
// class rightguess extends StatelessWidget {
//    rightguess({super.key});
//
//
// Future<String> getdata() async{
//   var url = Uri.parse(_homeguessState.baseurl + _homeguessState.getprodlist);
//   http.Response response = await http.get(url);
//
//   return response.body.toString();
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text(
//           _getData
//       ),
//       // body: Center(
//       //   child: Padding(
//       //     padding: EdgeInsets.all(30.0),
//       //     child: Column(
//       //       children: [
//       //         Icon(
//       //           Icons.thumb_up_alt_outlined,
//       //           color: Colors.green,
//       //           size: 300,
//       //         ),
//       //         Text(
//       //           'Your Guess Is Right',
//       //           style: TextStyle(fontSize: 20),
//       //         )
//       //       ],
//       //     ),
//       //   ),
//       // ),
//     );
//   }
// }

class urlConstants {}

class ApiService {
  Future<model?> fetchdata() async {
    print('called');
    var url = Uri.parse(_homeguessState.baseurl + _homeguessState.getnum);
    var response = await http.get(url);
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      // model _model = welcomeFromJson(response.body);
      // return _model;
    }
    // Future<List<model>?> fetchdata() async{
    //   var url = Uri.parse(urlConstants.baseurl+urlConstants.getprodlist);
    //   var response = await http.get(url);
    //   if(response.statusCode == 200){
    //     List<model> _list = welcomeFromJson(response.body) as List<model> ;
    //     return _list;
    //   }
    //   return null;
    // }
    return null;
  }
}
