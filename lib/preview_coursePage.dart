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
          SliverAppBar(
            expandedHeight: 256.0,
            
            flexibleSpace: Stack(
         alignment: AlignmentDirectional.bottomCenter,
         children: <Widget>[
            SizedBox(height: 300.0,
          width: double.infinity,
            child: FadeInImage.memoryNetwork(
  placeholder: kTransparentImage,
  image:'https://www.proximus.be/dam/jcr:d0accdbc-2551-4065-ac40-84c131fe10b6/cdn/sites/iportal/images/blogs/articles/res/avengers-infinity-war-blog-en~2018-08-30-10-52-57~cache.jpg',
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
  image: 'https://data.junkee.com/wp-content/uploads/2018/04/aveng.png',
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
      floatingActionButton:    FloatingActionButton.extended(
  label: Text('Doawnload'),
  icon: Icon(Icons.file_download),
  onPressed: (){},
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
                  Icon(Icons.star,color: Colors.grey,),
            ],
          ),
          Container(
            height: 400,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(alignment: Alignment.topLeft, child: Text('Acustic Cave 2', style: h1(),textAlign: TextAlign.left,),),
           Container(alignment: Alignment.topLeft,child:  Text('Description',
            style: h2_withBold(),
            textAlign: TextAlign.left,
            ),),
         Container(alignment: Alignment.center,child:  Text('Man decided to have a small adventure when he walked into a cave to dicover he was not the only persone present in the cave .He dicovers  a world of machines where everything small on the real world is big', 
          style: h2(),
          textAlign: TextAlign.left,
          ),)
       

          ],),
          )        ],
      ),
      
      );
    }
}

