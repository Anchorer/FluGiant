
import 'package:flutter/material.dart';

class WrapFlowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap & Flow')
      ),
      body: Column(
        children: <Widget>[
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            alignment: WrapAlignment.center,
            children: <Widget>[
              Chip(
                avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
                label: Text('Anchorer')
              ),
              Chip(
                avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('B')),
                label: Text('Beateat')
              ),
              Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('T')),
                  label: Text('Tec')
              ),
              Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('Z')),
                  label: Text('Zoollya')
              ),
              Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('W')),
                  label: Text('Winliiy')
              )
            ]
          )
        ]
      )
    );
  }

}