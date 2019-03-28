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
final Color pageBackgroudcolor = Color.fromRGBO(63, 63, 63, 1);
  final Color pageContainerColor = Color.fromRGBO(100, 99, 99, 1);
 @override
 Widget build(BuildContext context) {
   return Scaffold (
     backgroundColor: pageBackgroudcolor,
     body: Column(
       children: <Widget>[
         Container(
           child: TextField(
  decoration: new InputDecoration(
      border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      filled: true,
      hintStyle: new TextStyle(color: Colors.grey[800]),
      hintText: "Type in your text",
      fillColor: Colors.white70),
),
         )
       ],
     )
   );
 }
}