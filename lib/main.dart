import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "dice app",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dice_num = 1;

  void changedice() {
    setState(() {
      dice_num = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dice roller app'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
        
          Center(
              child:
                Image.asset("assets/$dice_num.jpg", height: 250, width: 250)),
                  
          MaterialButton(
            color: Colors.red,
            onPressed: changedice,
            child: Text(
              'Roll',
            ),
          ),
          SizedBox(height: 170),
          Text(
            "Developed by prabesh",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
