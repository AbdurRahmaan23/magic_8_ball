import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BallPage()
    ),
  );
}
class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
       appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
         title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}


class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallPageState();
}

class _BallPageState extends State<Ball> {
  int ballPageNumber = 1;
  void ballFaceChange() {
    setState(() {
      ballPageNumber = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                child: TextButton(
                    style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                  ),
                  onPressed: () {
                  ballFaceChange();
                  print('I got clicked');
                },
                child: Image.asset('images/ball$ballPageNumber.png'),
                ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}
