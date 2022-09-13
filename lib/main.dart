import 'package:flutter/material.dart';
import 'package:myappp/screen_one.dart';
import 'package:myappp/screen_two.dart';

void main() {
  runApp(MaterialApp(
    home: myapp(),
  ));
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return home();
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: Image(
                image: NetworkImage(
                    "https://th.bing.com/th/id/OIP.5RmT4v-VZgfTnBOePfqFrAHaEK?pid=ImgDet&rs=1")),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return screen_one();
                  })));
                });
              },
              child: Text(
                "Visit page #2",
                style: TextStyle(fontSize: 30),
              )),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return screen_two();
                  })));
                });
              },
              child: Text(
                "Visit page #3",
                style: TextStyle(fontSize: 30),
              ))
        ]),
      ),
    );
  }
}
