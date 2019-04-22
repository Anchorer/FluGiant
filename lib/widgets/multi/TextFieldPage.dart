
import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _pwController = new TextEditingController();
  FocusScopeNode _focusScopeNode;
  FocusNode _nameFocusNode, _pwFocusNode;
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameFocusNode = new FocusNode();
    _pwFocusNode = new FocusNode();
    _nameFocusNode.addListener(() {
      print('UserName has focus: ${_nameFocusNode.hasFocus}');
    });
    _pwFocusNode.addListener(() {
      print('Password has focus: ${_pwFocusNode.hasFocus}');
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidate: false,
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'UserName',
                  hintText: 'username or email',
                  prefixIcon: Icon(Icons.person)
                ),
                controller: _nameController,
                focusNode: _nameFocusNode,
                validator: (v) {
                  return v.trim().length > 0 ? null : 'Empty user name';
                }
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'password',
                  prefixIcon: Icon(Icons.lock)
                ),
                obscureText: true,
                controller: _pwController,
                focusNode: _pwFocusNode,
                validator: (v) {
                  return v.trim().length > 5 ? null : 'Empty password';
                },
              ),
              Builder(builder: (context) {
                return Row(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Move focus'),
                      onPressed: () {
                        if (_focusScopeNode == null) {
                          _focusScopeNode = FocusScope.of(context);
                        }
                        _focusScopeNode.requestFocus(_pwFocusNode);
                      },
                    ),
                    RaisedButton(
                      child: Text('Clear focus'),
                      onPressed: () {
                        _nameFocusNode.unfocus();
                        _pwFocusNode.unfocus();
                      },
                    ),
                    Expanded(
                      child: RaisedButton(
                        child: Text('Login'),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          if ((_formKey.currentState as FormState).validate()) {
                            print('Login success!');
                          }
                        },
                      ),
                    )
                  ]
                );
              })
            ]
          ),
        )
      )
    );
  }
}
