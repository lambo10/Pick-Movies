import 'package:flutter/material.dart';
import 'homeWidget.dart';
import 'profileWidget.dart';
import 'save.dart';
import 'searchWidget.dart';
import 'whishlistWidget.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color.fromRGBO(99, 98, 98, 1),
      ),
      navigatorObservers: <NavigatorObserver>[observer],
      home: SampleAppPage(),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: SampleAppPage(),
      ),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);
  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    homeWget(),
    searchWidget(),
    saveWideget(),
    profileWideget()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _children[_currentIndex],
//        color: Colors.blueAccent,
      ),
    bottomNavigationBar: new Theme(
    data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Color.fromRGBO(100, 99, 99, 1.0),
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.blue,
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: Colors.white))), // sets the inactive color of the `BottomNavigationBar`
    child: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            title: new Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.save),
            title: new Text('Saved'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: new Text('Profile'))
        ],
      )),
    );
  }
}
