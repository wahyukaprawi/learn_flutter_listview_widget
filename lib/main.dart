import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Color> Mycolor = [Colors.greenAccent, Colors.orangeAccent, Colors.yellowAccent, Colors.redAccent, Colors.blueAccent, Colors.purpleAccent, Colors.cyanAccent, Colors.pinkAccent, Colors.limeAccent, Colors.tealAccent];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn ListView Widget'),
        ),
        body: ListView.builder(
          itemCount: Mycolor.length,
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              height: 100,
              color: Mycolor[index],
            );
          },
        )
      ),
    );
  }
}