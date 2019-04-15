
import 'package:flutter/material.dart';

class TapboxC extends StatefulWidget {

  TapboxC({Key key, this.active : false, @required this.onChanged});

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<StatefulWidget> createState() => _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {

  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            widget.active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
            ? new Border.all(
                color: Colors.teal[700],
                width: 10) : null
        ),
      ),
    );
  }

}

class ParentCWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ParentCWidgetState();
}

class _ParentCWidgetState extends State<ParentCWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newState) {
    setState(() {
      _active = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new TapboxC(
          active: _active,
          onChanged: _handleTapboxChanged),
    );
  }

}