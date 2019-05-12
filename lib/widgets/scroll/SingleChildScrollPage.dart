import 'package:flutter/material.dart';

class SingleChildScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

    return Scaffold(
      appBar: AppBar(
        title: Text('Single child scroll page'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
                children: str.split("").map((e) {
                  return Text(
                    e,
                    style: TextStyle(color: Colors.blue),
                    textScaleFactor: 5.0,);
                }).toList()
            ),
          ),
        ),
      )
    );
  }

}