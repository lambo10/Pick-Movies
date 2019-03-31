import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'videoPLA_PS.dart';
import 'package:transparent_image/transparent_image.dart';

class Todo {
 final String title;
 final String description;

  Todo(this.title, this.description);
}
class videoWatchScreen extends StatefulWidget{
   final Todo todo;
 videoWatchScreen({Key key, @required this.todo}) : super(key: key);
  
@override
  _main createState() => _main();
}
class _main extends  State<videoWatchScreen> {
  final Color pageBackgroudcolor = Color.fromRGBO(63, 63, 63, 1);
  final Color pageContainerColor = Color.fromRGBO(99, 98, 98, 1);
 var videoWg_with = 500.0;
 var videoWg_hight = 200.0;
 var thumb_n_disp = true;
 var video_disp = false;
 var disp_pricebtn = false;
 ScrollController _controller;
 _scrollListener() {
    if (_controller.offset <= (_controller.position.minScrollExtent + 100.0) &&
        !_controller.position.outOfRange) {
      setState(() {
       disp_pricebtn = false;
      });
    }else{
      disp_pricebtn = true;
    }
 }
 @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }
 void _disp_vi(){
   setState(() {
       thumb_n_disp = false;
   video_disp = true;
   });
 }
  void _setW_H(){
  setState(() {
    LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      if(constraints.maxWidth <= 360.0) {
       videoWg_with = 500.0;
       videoWg_hight = 200.0;
      } else {
        videoWg_with = 600.0;
        videoWg_hight = 300.0;
      }
    }
  );
  });
 }
h1(){
  return TextStyle(fontWeight: FontWeight.bold,color: Colors.white.withOpacity(1.0),fontSize: 25);
}
h2(){
  return TextStyle(color: Colors.white.withOpacity(1.0),fontSize: 15);
}
h2_withBold(){
  return TextStyle(fontWeight: FontWeight.bold,color: Colors.white.withOpacity(1.0),fontSize: 15);
}
text_alignLeft(){
  return TextAlign.left;
}
   @override
  Widget build(BuildContext context) {
    // Use the Todo to create our UI
    
    return Scaffold(
      body: CustomScrollView(
  
        slivers: <Widget>[
           SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(children: <Widget>[
                 
                ],)
              ]
            ),
          )
        ],
      ),
      );
   
   }

   _video_dispPanel(){
     return Container(
       width: double.infinity,
       height: MediaQuery.of(context).size.height/2.5,
        child: ChewieDemo(title: 'preview video',),
     );
   }
   }

