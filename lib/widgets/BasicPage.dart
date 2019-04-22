
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widget Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Hello Style',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                fontFamily: 'Courier',
                background: new Paint()..color=(Colors.yellow),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted
              )),

            Text.rich(TextSpan(
              children: [
                TextSpan(
                  text: 'Home:'
                ),
                TextSpan(
                  text: 'https://github.com/Anchorer',
                  style: TextStyle(color: Colors.blue)
                )
              ]
            )),

            DefaultTextStyle(
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('I am Anchorer.'),
                  Text('I an Anchorer.',
                    style: TextStyle(
                      inherit: false,
                      color: Colors.grey
                    ),)
                ],
              ),
            ),

            RaisedButton(
              child: Text('RaidedButton'),
              onPressed: () {},
            ),

            FlatButton(
              child: Text('FlatButton'),
              onPressed: () {},
            ),

            OutlineButton(
              child: Text('OutlineButton'),
              onPressed: () {},
            ),

            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
            ),

            RaisedButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text('Submit'),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
            ),

            /*Image(
              image: AssetImage('images/avatar.png'),
              width: 100,
            ),

            Image.network('https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
              width: 100,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.videogame_asset, color: Colors.green),
                Icon(Icons.audiotrack, color: Colors.green),
                Icon(Icons.dashboard, color: Colors.green)
              ],
            ),*/

            /*Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(' Hello world '),
                    Text(' I am Anchorer ')
                  ]
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(' Hello world '),
                    Text(' I am Anchorer ')
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    Text(' Hello world '),
                    Text(' I am Anchorer ')
                  ]
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.up,
                  children: <Widget>[
                    Text(' Hello world ', style: TextStyle(fontSize: 30.0)),
                    Text(' I am Anchorer ')
                  ]
                )
              ],
            )*/

            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30,
                    color: Colors.green,
                  ),
                )
              ]
            ),

            SizedBox(
              height: 100,
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 30,
                      color: Colors.red,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30,
                      color: Colors.green,
                    ),
                  )
                ]
              )
            )
          ],
        ),
      )
    );
  }

}