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

   @override
  Widget build(BuildContext context) {
    // Use the Todo to create our UI
    
    return Scaffold(
appBar: AppBar(
actions: <Widget>[
  IconButton(
    icon: Icon(Icons.share),
  ),
],
),
body: Container(
color: Color.fromRGBO(238, 238, 238, 1),
     child: ListView(
       controller: _controller,
     shrinkWrap: true,
     children: <Widget>[
       Stack(
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
      
         Container(child: Padding(
padding: const EdgeInsets.only(
  left: 15.0,top: 3.0
),
child: Text('NGN3000', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),   ),
),),
     Container(
       width: double.infinity,
       child: Padding(
         padding: EdgeInsets.all(5.0),
         child: RaisedButton(
        onPressed: (){},
        color: Colors.blue,
        
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
          children: <Widget>[
            Text('Home Tutoring',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,
            color: Colors.white),),
            Text('NGN5000', style: TextStyle(color: Colors.white),)
          ],
        )
     ,
        )  ),
       ) ),
      Container(child: Padding(
padding: const EdgeInsets.all(3.0),
child: Center(   child: Card(     child: Column(       mainAxisSize: MainAxisSize.min,       children: <Widget>[
ListTile(
  title: Text('What you will learn?', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,),),
),
ListTile(leading: Icon(Icons.done), subtitle: Text( 'Save up NGN 3000 by purchasing all courses at once.', style: TextStyle(fontSize: 15),), ), ButtonTheme.bar( // make buttons use the appropriate styles for cards
child: Container() ),
ListTile(leading: Icon(Icons.done), subtitle: Text( 'Save up NGN 3000 by purchasing all courses at once.', style: TextStyle(fontSize: 15),), ), ButtonTheme.bar( // make buttons use the appropriate styles for cards
child: Container() ),
ListTile(leading: Icon(Icons.done), subtitle: Text( 'Save up NGN 3000 by purchasing all courses at once.', style: TextStyle(fontSize: 15),), ), ButtonTheme.bar( // make buttons use the appropriate styles for cards
child: Container() ),
ListTile(leading: Icon(Icons.done), subtitle: Text( 'Save up NGN 3000 by purchasing all courses at once.', style: TextStyle(fontSize: 15),), ), ButtonTheme.bar( // make buttons use the appropriate styles for cards
child: Container() ),
 ], ), ), ), 
    ),),
      Container(child: Padding(
padding: const EdgeInsets.all(3.0),
child: Center(   child: Card(     child: Column(       mainAxisSize: MainAxisSize.min,       children: <Widget>[
ListTile( title: Text( 'Description', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),), subtitle: Text( 'Save up NGN 3000 by purchasing all courses at once.' ), ), ButtonTheme.bar( // make buttons use the appropriate styles for cards
child: Container(), ), ], ), ), ), 
    ),),

 Container(child: Padding(
padding: const EdgeInsets.all(3.0),
child: Card(
  child: Padding(
    padding: const EdgeInsets.all(0.0),
    
  child:  Column(
children: <Widget>[
  Container(
    child: ListTile(
      leading: Text(
      'People also viewed',
      textAlign: TextAlign.left,
      style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold
      )
    ),
    )
  ),
  Container(
    decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 1.0, color: Colors.grey,),
    ),
    ),
    child: InkWell(
      onTap: (){},
      child: ListTile(
subtitle:  Container(
    child: Row(
      children: <Widget>[
        Container(
          width: 130.0,
          height: 100.0,
          child: FadeInImage.memoryNetwork(
  placeholder: kTransparentImage,
  image:'https://firebasestorage.googleapis.com/v0/b/liliteach-3e0c2.appspot.com/o/course%20pic1.jpg?alt=media&token=aaaa1ebe-1f34-4d2a-a475-7de97ed34fbf',
            fit: BoxFit.cover,
            ),
        ),
        Flexible(
              child: new Container(
                padding: new EdgeInsets.only(left: 30.0,),
                child: new Text(
                  'Save up NGN 3000 by purchasing all courses at once.',
                   overflow: TextOverflow.fade,
                   style: TextStyle(fontSize: 18.0,),
                   ),
              ),
            ),
      ],
    ),
   ),
  ),
    ),
  ),
  Container(
    decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 1.0, color: Colors.grey,),
    ),
    ),
    child: InkWell(
      onTap: (){},
      child: ListTile(
subtitle:  Container(
    child: Row(
      children: <Widget>[
        Container(
          width: 130.0,
          height: 100.0,
          child: FadeInImage.memoryNetwork(
  placeholder: kTransparentImage,
  image:'https://firebasestorage.googleapis.com/v0/b/liliteach-3e0c2.appspot.com/o/course%20pic1.jpg?alt=media&token=aaaa1ebe-1f34-4d2a-a475-7de97ed34fbf',
            fit: BoxFit.cover,
            ),
        ),
        Flexible(
              child: new Container(
                padding: new EdgeInsets.only(left: 30.0,),
                child: new Text(
                  'Save up NGN 3000 by purchasing all courses at once.',
                   overflow: TextOverflow.fade,
                   style: TextStyle(fontSize: 18.0,),
                   ),
              ),
            ),
      ],
    ),
   ),
  ),
    ),
  ),
  Container(
    decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 1.0, color: Colors.grey,),
    ),
    ),
    child: InkWell(
      onTap: (){},
      child: ListTile(
subtitle:  Container(
    child: Row(
      children: <Widget>[
        Container(
          width: 130.0,
          height: 100.0,
          child: FadeInImage.memoryNetwork(
  placeholder: kTransparentImage,
  image:'https://firebasestorage.googleapis.com/v0/b/liliteach-3e0c2.appspot.com/o/course%20pic1.jpg?alt=media&token=aaaa1ebe-1f34-4d2a-a475-7de97ed34fbf',
            fit: BoxFit.cover,
            ),
        ),
        Flexible(
              child: new Container(
                padding: new EdgeInsets.only(left: 30.0,),
                child: new Text(
                  'Save up NGN 3000 by purchasing all courses at once.',
                   overflow: TextOverflow.fade,
                   style: TextStyle(fontSize: 18.0,),
                   ),
              ),
            ),
      ],
    ),
   ),
  ),
    ),
  ),
     ],
  

)
 ,
  ),
)
),
 ),
 Container(
   height: 100.0,
 )
       ],
     ),
    )
,
floatingActionButton: FloatingActionButton.extended(
  icon: Icon(Icons.video_library),
  label: Text('BUY NGN3000'),
  onPressed: (){},
)
);
    }
}

