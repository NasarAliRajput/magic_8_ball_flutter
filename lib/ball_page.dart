import 'dart:math';

import 'package:flutter/material.dart';

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Ask Me Anything'),
      //   backgroundColor: Colors.redAccent,
      // ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff191654),
            Color(0xff43C6AC),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Ask Me Anything",
              style: TextStyle(
                  fontFamily: "Urbanist",
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          SizedBox(height: 60),
          TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(4) + 1;
                print('clicked $ballNumber');
              });
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ],
      ),
    );
  }
}
