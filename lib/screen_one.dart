import 'package:flutter/material.dart';
import 'package:myappp/main.dart';

class screen_one extends StatefulWidget {
  const screen_one({super.key});

  @override
  State<screen_one> createState() => _screen_oneState();
}

class _screen_oneState extends State<screen_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Image(
                image: NetworkImage(
                    "https://th.bing.com/th/id/R.ce304fa69763e7092b5c55c5f84256f1?rik=QkBCWfoiiEUdkA&pid=ImgRaw&r=0")),
          ),
          Center(
              child: Text(
            "inside the seconed screen",
            style: TextStyle(fontSize: 30, color: Colors.red),
          )),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                    return myapp();
                  })));
                });
              },
              child: Text("back to home screen"))
        ],
      ),
    );
  }
}
