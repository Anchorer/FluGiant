
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TapboxB extends StatelessWidget{

  TapboxB({Key key, this.active : false, @required this.onChanged})
    : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32, color: Colors.white)
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600]
        ),
      ),
    );
  }

}


class ParentBWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _ParentBWidgetState();
}

class _ParentBWidgetState extends State<ParentBWidget>{

  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapboxB(
        active: _active,
        onChanged: _handleTapboxChanged
      ),
    );
  }

}