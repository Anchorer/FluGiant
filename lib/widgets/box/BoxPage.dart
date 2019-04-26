
import 'package:flu_giant/widgets/box/TapboxA.dart';
import 'package:flu_giant/widgets/box/TapboxB.dart';
import 'package:flu_giant/widgets/box/TapboxC.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Box Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // Tap Box A
            TapboxA(),
            // Tap Box B
            ParentBWidget(),
            // Tap Box C
            ParentCWidget()
          ],
        ),
      ),
    );
  }

}