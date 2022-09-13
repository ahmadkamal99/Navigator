import 'package:flutter/material.dart';
import 'package:myappp/main.dart';

class screen_two extends StatefulWidget {
  const screen_two({super.key});

  @override
  State<screen_two> createState() => _screen_twoState();
}

class _screen_twoState extends State<screen_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            child: Image(
                image: NetworkImage(
                    "https://th.bing.com/th/id/R.f3407e3d4fc59868197d9a301a0d55f9?rik=oXuCGVtYjsR0EA&riu=http%3a%2f%2fopenclipart.org%2fimage%2f2400px%2fsvg_to_png%2f80155%2fBina_Effect_Letters_alphabet_red_29.png&ehk=1G7HmdGq40%2fq%2bDxEd6xLzYzsRBXkeMv21a6ZjXqitr4%3d&risl=&pid=ImgRaw&r=0")),
          ),
          Center(
              child: Text(
            "inside page #3",
            style: TextStyle(fontSize: 30),
          )),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                    return myapp();
                  })));
                });
              },
              child: Text("go back to home screen"))
        ],
      ),
    );
  }
}
