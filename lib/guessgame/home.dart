import 'package:flutter/material.dart';

TextEditingController _controller = TextEditingController();

class homeguess extends StatefulWidget {
  const homeguess({super.key});

  @override
  State<homeguess> createState() => _homeguessState();
}

class _homeguessState extends State<homeguess> {
  // @override

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  int chances = 0;
  @override
  Widget build(BuildContext context) {

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
                onPressed: (){
                  chances++;
                  if (chances <= 3){
                    if (_controller.text.toString() == '7') {

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>rightguess()));
                    } else {
                      // print(_controller.text);
                      // print(_model?.name);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const wrongguess()));
                    }
                  }
                  else{
                    chances=0;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const outofguess()));
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

class rightguess extends StatelessWidget {
   rightguess({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.green,
                size: 300,
              ),
              Text(
                'Your Guess Is Right',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class outofguess extends StatelessWidget {
  const outofguess({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Icon(
                Icons.exit_to_app_outlined,
                color: Colors.grey,
                size: 300,
              ),
              Text(
                'Out of guesses',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
