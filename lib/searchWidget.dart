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
      appBar: AppBar(
       title: Text('Search'),
     ),
     body: Column(
       children: <Widget>[
         Container(
           padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 1.0, color: pageContainerColor),
    ),
    ),
           child: TextField(
             style: TextStyle(color: Colors.white),
  decoration: new InputDecoration(
      border: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue, width: 2),
        borderRadius: const BorderRadius.all(
          const Radius.circular(30.0),
        ),
      ),
      
      filled: true,
      hintStyle: new TextStyle(color: Colors.white),
      hintText: "Type in your text",
      fillColor: pageBackgroudcolor),
),
         ),
       Container(
         height: MediaQuery.of(context).size.height - 70,
         padding: EdgeInsets.all(10.0),
         child: ListView(
           
           children: <Widget>[
             _buildSearchResultCont(),
       _buildSearchResultCont(),
       _buildSearchResultCont(),
       _buildSearchResultCont(),
       _buildSearchResultCont(),
       _buildSearchResultCont(),
       _buildSearchResultCont(),
       _buildSearchResultCont(),
       _buildSearchResultCont()
           ],
         ),
       )
        ],
     )
   );
 }
 Widget _buildSearchResultCont(){
   return  Container(
     padding: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 1.0, color: pageContainerColor),
    ),
    ),
           child: InkWell(
             onTap: (){},
             child: Row(children: <Widget>[
               Container(
                 width: 50,
                 height: 50,
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