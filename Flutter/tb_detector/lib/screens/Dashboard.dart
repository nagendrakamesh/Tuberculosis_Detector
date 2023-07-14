import 'dart:math';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TB Detector'.toUpperCase()),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        // child: Text.rich(
        //   TextSpan(text: 'My', children: [
        //     TextSpan(
        //       text: 'Flutter',
        //       style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        //     ),
        //     TextSpan(
        //       text: 'App',
        //       style: TextStyle(fontSize: 30, color: Colors.lightBlue),
        //     ),
        //   ]),
        // ),

        child: Text("Random Number is : ${getNumber()}"),
      ),
    );
  }
}


int getNumber(){
  return Random().nextInt(100);
}