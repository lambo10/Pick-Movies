import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'preview_coursePage.dart';
import 'package:transparent_image/transparent_image.dart';


class homeWget extends StatelessWidget{
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  
 @override
 Widget build(BuildContext context) {
   
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home_page(),
    );
 }

}

class home_page extends StatefulWidget{
  home_page({Key key}) : super(key: key);
  
@override
  _main createState() => _main();
}

class _main extends State<home_page>{

final List<Todo> todos = new List(0);
final Color pageBackgroudcolor = Color.fromRGBO(63, 63, 63, 1);
final Color pageContainerColor = Color.fromRGBO(99, 98, 98, 1);

Card getStructuredGridCell(name, image) {
    return new Card(
        elevation: 1.5,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            new Image(image: new AssetImage('https://firebasestorage.googleapis.com/v0/b/liliteach-3e0c2.appspot.com/o/1170x500-01-1.jpg?alt=media&token=664522c6-1a23-48c4-baa8-82b59c2884df')),
            new Center(
              child: new Text(name),
            )
          ],
        ));
  }

 @override
 Widget build(BuildContext context) {
   return ListView(
    
     children: <Widget>[
        ListView(
     shrinkWrap: true,
     children: <Widget>[
      Container(
      child: new SizedBox(
            height: 250.0,
            width: double.infinity,
            child: new Carousel(
              images: [
                new NetworkImage('https://firebasestorage.googleapis.com/v0/b/liliteach-3e0c2.appspot.com/o/1170x500-01-1.jpg?alt=media&token=664522c6-1a23-48c4-baa8-82b59c2884df'),
                new NetworkImage('https://firebasestorage.googleapis.com/v0/b/liliteach-3e0c2.appspot.com/o/kids-banner.jpg?alt=media&token=9856e43a-0c4a-4283-8852-e19eab877363'),
                new NetworkImage('https://firebasestorage.googleapis.com/v0/b/liliteach-3e0c2.appspot.com/o/LENOIR-4.jpg?alt=media&token=a335a96f-28b8-4b0c-ac91-54707d80eed2'),
                new NetworkImage('https://firebasestorage.googleapis.com/v0/b/liliteach-3e0c2.appspot.com/o/wgep067_thumbRAISEYOURHAND.png?alt=media&token=aba74d31-845c-44c1-b202-e7a711519119')
              ],
            )
        ),
    ),
   
       Container(
         color: pageBackgroudcolor,
         child: Padding(
padding: const EdgeInsets.all(3.0),
child: Center(   child: Card(  
   child: InkWell(
     onTap: null,
     child: SizedBox(
       height: 150,
       width: double.infinity,
       child: FadeInImage.memoryNetwork(
  placeholder: kTransparentImage,
  image:'https://firebasestorage.googleapis.com/v0/b/liliteach-3e0c2.appspot.com/o/course%20pic1.jpg?alt=media&token=aaaa1ebe-1f34-4d2a-a475-7de97ed34fbf',
            fit: BoxFit.cover,
            ),
  
     ) ) ), ), 
    ),),


GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 1,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("Facebook", "social/facebook.png"),
        getStructuredGridCell("Twitter", "social/twitter.png"),
        getStructuredGridCell("Instagram", "social/instagram.png"),
        getStructuredGridCell("Linkedin", "social/linkedin.png"),
        getStructuredGridCell("Gooogle Plus", "social/google_plus.png"),
        getStructuredGridCell("Launcher Icon", "ic_launcher.png"),
      ],
    ),


    ],
   )
,
     ],
   );}
}