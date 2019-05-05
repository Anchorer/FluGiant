import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> with SingleTickerProviderStateMixin {

  int _selectedIndex = 0;
  TabController _tabController;
  List tabs = ['News', 'History', 'Gallery'];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: tabs.length, vsync: this);
    _tabController.addListener(() {
      _onItemSelected(_tabController.index);
      print('Tab ${_tabController.index} selected');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: Text('Scaffold Page'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: () {})
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map((e) => Tab(text: e)).toList()
        ),
      ),

      // Drawer
      drawer: new MyDrawer(),

      // Body using TabBarView
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) {
          return Container(
            alignment: Alignment.center,
            child: Text(e, textScaleFactor: 3)
          );
        }).toList(),
      ),

      // Bottom Navigation Bar
      /*bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School'))
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemSelected
      ),*/

      // BottomAppBar
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.home)),
            SizedBox(),
            IconButton(icon: Icon(Icons.business))
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround
        ),
      ),


      // FloatingActionButton
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.adb),
        onPressed: () {}
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}

class MyDrawer extends StatelessWidget {

  const MyDrawer({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset('images/avatar.png', width: 80)
                    )
                  ),
                  Text(
                    'Anchorer',
                    style: TextStyle(fontWeight: FontWeight.bold)
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text('Add Account'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}