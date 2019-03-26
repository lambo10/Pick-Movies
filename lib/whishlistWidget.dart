import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class whishlistWidget extends StatelessWidget{
  static FirebaseAnalytics analytics = FirebaseAnalytics();

 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wishlist',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _Wishlist_page(),
    );
 }

}

class _Wishlist_page extends StatefulWidget{
  _Wishlist_page({Key key}) : super(key: key);
@override
  _main createState() => _main();
}

class _main extends State<_Wishlist_page>{

 @override
 Widget build(BuildContext context) {
   return Scaffold (
     appBar: AppBar(
       title: Text('Wishlist'),
     ),
     body: Center(child: Text('Wishlist')),
   );
 }
}