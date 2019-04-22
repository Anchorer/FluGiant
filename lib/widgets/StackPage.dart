
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Page'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
                child: Text('Hello Stack', style: TextStyle(color: Colors.white)),
                color: Colors.red
            ),
            Positioned(
                left: 20,
                child: Text('I an Left')
            ),
            Positioned(
                top: 20,
                child: Text('I am Top')
            )
          ],
        )
      )
    );
  }

}