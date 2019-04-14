import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            title: Text('New Route')
        ),
        body: Center(
          child: Text('This is a new route'),
        )
    );
  }
}