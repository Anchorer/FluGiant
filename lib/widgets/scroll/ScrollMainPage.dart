
import 'package:flutter/material.dart';

import 'SingleChildScrollPage.dart';

class ScrollMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll Main Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text('Single child scroll page'),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new SingleChildScrollPage();
              }));
            },
          )
        ],
      ),
    );
  }

}