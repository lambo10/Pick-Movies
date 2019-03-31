import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'videoWatch.dart';

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
             onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => videoWatchScreen(video_address: 'http://dl9.heyserver.in/film/2018-7/Avengers.Infinity.War.2018.720p.WEB-DL.2CH.x265.HEVC-PSA.mkv',videoID: '',),
                ),
              );
             },
             child: Row(children: <Widget>[
               Container(
                 width: 200,
                 height: 110,
                 child:  FadeInImage.memoryNetwork(
          
            image:
                'https://firebasestorage.googleapis.com/v0/b/liliteach-3e0c2.appspot.com/o/course%20pic1.jpg?alt=media&token=aaaa1ebe-1f34-4d2a-a475-7de97ed34fbf',
            fit: BoxFit.cover,
          ),),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Beauty and the beast', style: TextStyle(color: Colors.white),),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('1-12-2019', style: TextStyle(color: Colors.white),),
                ),       
              ],
            )
          )
             ],),
           ),
         );
       
 }
}