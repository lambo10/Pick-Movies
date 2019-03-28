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
final Color pageBackgroudcolor = Color.fromRGBO(63, 63, 63, 1);
  final Color pageContainerColor = Color.fromRGBO(100, 99, 99, 1);
 @override
 Widget build(BuildContext context) {
   
   return Scaffold (
     backgroundColor: pageBackgroudcolor,
     appBar: AppBar(
       title: Text('Saved'),
     ),
     body: Column(
       children: <Widget>[
         Flexible(
           child: Container(
             child: ListView(
               children: <Widget>[
                 _buildSaveVidCont(),
                 _buildSaveVidCont(),
                 _buildSaveVidCont(),
                 _buildSaveVidCont(),
                 _buildSaveVidCont(),
                 _buildSaveVidCont(),
                 _buildSaveVidCont(),
                 _buildSaveVidCont(),
                 _buildSaveVidCont(),
                 _buildSaveVidCont()
               ],
             ),
           ),
         )
       ],
     ),
   );
 }
 Widget _buildSaveVidCont(){
   return  Container(
     padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 1.0, color: pageContainerColor),
    ),
    ),
           child: InkWell(
             onTap: (){},
             child: Row(children: <Widget>[
               Container(
                 width: 110,
                 height: 110,
                 child:  FadeInImage.memoryNetwork(
          
            image:
                'https://firebasestorage.googleapis.com/v0/b/liliteach-3e0c2.appspot.com/o/course%20pic1.jpg?alt=media&token=aaaa1ebe-1f34-4d2a-a475-7de97ed34fbf',
            fit: BoxFit.cover,
          ),),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text('Beauty and the beast', style: TextStyle(color: Colors.white),),
          )
             ],),
           ),
         );
       
 }
}