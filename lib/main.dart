import 'package:flu_giant/CounterWidget.dart';
import 'package:flu_giant/NewRoutePage.dart';
import 'package:flu_giant/RandomWordsWidget.dart';
import 'package:flu_giant/TipPage.dart';
import 'package:flu_giant/box/BoxPage.dart';
import 'package:flu_giant/const/Consts.dart';
import 'package:flu_giant/widgets/BasicPage.dart';
import 'package:flu_giant/widgets/SwitchAndCheckBoxPage.dart';
import 'package:flu_giant/widgets/TextFieldPage.dart';
import 'package:flu_giant/widgets/WrapFlowPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 应用名称
      title: 'Flutter Demo',
      // 应用主题
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      // 应用首页路由
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      // 命名路由表
      routes: {
        Consts.PAGE_NEW_ROUTE: (context) => new NewRoutePage(),
        Consts.PAGE_BOX_PAGE: (context) => new BoxPage(),
        Consts.PAGE_WIDGET_PAGE: (context) => new BasicPage(),
        Consts.PAGE_SWITCH_PAGE: (context) => new SwitchAndCheckBoxPage(),
        Consts.PAGE_LOGIN_PAGE: (context) => new TextFieldPage(),
        Consts.PAGE_WRAP_FLOW_PAGE: (context) => new WrapFlowPage()
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 1. Click times
            Text(
              'You have clicked the button this many times::::',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),

            // 2. Open new page(static route)
            /*FlatButton(
              child: Text("Open new route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, Consts.PAGE_NEW_ROUTE);
              },
            ),*/

            // 3. Open new page with parameter
            /*FlatButton(
              child: Text('Show Tips'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) {
                  return new TipPage('This is different!');
                }));
              },
            ),*/

            // 4. Random Words Page
            /*RandomWordsWidget(),*/

            // 5. Counter Page
            /*FlatButton(
              child: Text('Go to Counter page'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) {
                  return new CounterWidget();
                }));
              },
            ),*/

            // 6. Box Page
            /*FlatButton(
              child: Text('Go to Box page'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, Consts.PAGE_BOX_PAGE);
              },
            ),*/

            // 7. Widget Page
            FlatButton(
              child: Text("Go to Basic Widget page"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, Consts.PAGE_WIDGET_PAGE);
              },
            ),

            // 8. Switch Page
            FlatButton(
              child: Text('Go to Switch page'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, Consts.PAGE_SWITCH_PAGE);
              },
            ),

            // 9. Login Page
            RaisedButton(
              child: Text('Login'),
              onPressed: () {
                Navigator.pushNamed(context, Consts.PAGE_LOGIN_PAGE);
              },
            ),

            // 10. Wrap&Flow Page
            FlatButton(
              child: Text('Go to Wrap&Flow Page'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, Consts.PAGE_WRAP_FLOW_PAGE);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
