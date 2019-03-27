import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'videoPLA_PS.dart';
import 'package:transparent_image/transparent_image.dart';

class Todo {
 final String title;
 final String description;

  Todo(this.title, this.description);
}
class DetailScreen extends StatefulWidget{
   final Todo todo;
 DetailScreen({Key key, @required this.todo}) : super(key: key);
  
@override
  _main createState() => _main();
}
class _main extends  State<DetailScreen> {
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
  return TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(1.0),fontSize: 20);
}
h2(){
  return TextStyle(color: Colors.black.withOpacity(1.0),fontSize: 14);
}
   @override
  Widget build(BuildContext context) {
    // Use the Todo to create our UI
    
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 256.0,
            
            flexibleSpace: Stack(
         alignment: AlignmentDirectional.bottomCenter,
         children: <Widget>[
            SizedBox(height: 300.0,
          width: double.infinity,
            child: FadeInImage.memoryNetwork(
  placeholder: kTransparentImage,
  image:'https://firebasestorage.googleapis.com/v0/b/liliteach-3e0c2.appspot.com/o/bac_pic2.jpg?alt=media&token=7a0f61a9-97d4-4447-b23e-938d9f1dd56a',
            fit: BoxFit.cover,
            ),
          
          ),
           
            Visibility(
              visible: video_disp,
              child:  SizedBox(height: 200.0,
          width: 300.0,
            child:ChewieDemo(title: 'preview video',)
          
          ),
            ),
            Visibility(
              visible: thumb_n_disp,
              child: SizedBox(height: videoWg_hight,
          width: videoWg_with,
            child: InkWell(
              onTap: _disp_vi,
              child: Stack(
              
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                FadeInImage.memoryNetwork(
  placeholder: kTransparentImage,
  image: 'https://picsum.photos/250?image=9',
  fit: BoxFit.cover,
),
Icon(Icons.play_arrow,size: 70.0,),
              ],
            )
          ,
            )
          ),
            ),
          
         ],
       ),
      
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(children: <Widget>[
                 _build_starAndDescriptionSection()
                ],)
              ]
            ),
          )
        ],
      ),
    );
   
   }
    _build_starAndDescriptionSection(){
      return Container(
        color: pageBackgroudcolor,
        child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.grey,)
            ],
          ),
          Column(
            children: <Widget>[
            Text('Description',
            style: h1()
            ),
          Text('Man decided to have a small adventure when he walked into a cave to dicover he was not the only persone present in the cave .He dicovers  a world of machines where everything small on the real world is big', 
          style: h2(),)

          ],)        ],
      ),);
    }
}

