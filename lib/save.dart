import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class saveWideget extends StatelessWidget{
  static FirebaseAnalytics analytics = FirebaseAnalytics();

 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _Save_page(),
    );
 }

}

class _Save_page extends StatefulWidget{
  _Save_page({Key key}) : super(key: key);
@override
  _main createState() => _main();
}

class _main extends State<_Save_page>{

 @override
 Widget build(BuildContext context) {
   return Scaffold (
     appBar: AppBar(
       title: Text('Saved'),
     ),
     body: Center(child: Text('Save')),
   );
 }
}