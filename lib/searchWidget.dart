import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class searchWidget extends StatelessWidget{
  static FirebaseAnalytics analytics = FirebaseAnalytics();

 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _Search_page(),
    );
 }

}

class _Search_page extends StatefulWidget{
  _Search_page({Key key}) : super(key: key);
@override
  _main createState() => _main();
}

class _main extends State<_Search_page>{

 @override
 Widget build(BuildContext context) {
   return Scaffold (
     appBar: AppBar(
       title: Text('Search'),
     ),
     body: Center(child: Text('Search')),
   );
 }
}