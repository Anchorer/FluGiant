import 'package:flutter/material.dart';

class SwitchAndCheckBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SwitchAndCheckBoxPageState();
}

class _SwitchAndCheckBoxPageState extends State<SwitchAndCheckBoxPage> {

  bool _switchSelected = false;
  bool _checkBoxSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch and CheckBox'),
      ),
      body: Column(
        children: <Widget>[
          Switch(
            value: _switchSelected,
            onChanged: (value) {
              setState(() {
                _switchSelected = value;
              });
            },
          ),

          Checkbox(
            value: _checkBoxSelected,
            onChanged: (value) {
              setState(() {
                _checkBoxSelected = value;
              });
            },
          )
        ],
      )
    );
  }

}