import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class profileWideget extends StatelessWidget{
  static FirebaseAnalytics analytics = FirebaseAnalytics();

 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      title: 'profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _profile_page(),
    );
 }

}

class _profile_page extends StatefulWidget{
  _profile_page({Key key}) : super(key: key);
@override
  _main createState() => _main();
}

class _main extends State<_profile_page>{

 @override
 Widget build(BuildContext context) {
   return Scaffold (
     appBar: AppBar(
       title: Text('Profile'),
     ),
     body: Center(child: Text('profile')),
   );
 }
}