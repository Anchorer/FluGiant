import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipPage extends StatelessWidget {
  TipPage(this.tip);
  final String tip;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Tip"),
      ),
      body: Center(
        child: Text('Tip: $tip'),
      ),
    );
  }
}