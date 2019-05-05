
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ConstrainedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget redBox = DecoratedBox(
        decoration: BoxDecoration(color: Colors.red)
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Constrained Page')
      ),
      body: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: double.infinity, // as wide as possible
              minHeight: 50
            ),
            child: Container(
              height: 5,
              child: redBox
            )
          ),

          /*SizedBox(
            width: 80,
            height: 80,
            child: redBox
          ),*/

          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.orange[700]]),
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0
                )
              ]
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
              child: Text('Login', style: TextStyle(color: Colors.white))
            )
          ),

          // Transform
          Container(
            color: Colors.black,
            margin: EdgeInsets.only(top: 50),
            child: Transform(
              alignment: Alignment.topRight,
              transform: new Matrix4.skewY(0.3),
              child: new Container(
                padding: EdgeInsets.all(3.0),
                color: Colors.deepOrange,
                child: const Text('Apartment for rent!'),
              ))
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.translate(
                  offset: Offset(-20.0, -10.0),
                  child: Text('Translate')
              )
            )
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.rotate(
                angle: math.pi/2,
                child: Text('Rotate'),),
            )
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.scale(
                  scale: 1.5,
                  child: Text('Scale')
              )
            )
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text('A RotatedBox'))
              ),
              Text('Text afterwards', style: TextStyle(color: Colors.orange))
            ]
          ),

          Container(
            margin: EdgeInsets.only(top: 50, left: 120),
            constraints: BoxConstraints.tightFor(width: 200, height: 150),
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Colors.red, Colors.orange],
                center: Alignment.topLeft,
                radius: .98
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0
                )
              ]
            ),
            transform: Matrix4.rotationZ(.4),
            alignment: Alignment.center,
            child: Text('Container', style: TextStyle(color: Colors.white, fontSize: 40.0))
          )

        ],
      ),
    );
  }

}