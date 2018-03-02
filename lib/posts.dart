import 'package:flutter/material.dart';
import './stories.dart';

class PostWrapper extends StatelessWidget {
  // PostWrapper.ScrollNotification();
  // MediaQuery.of(context).Size
  @override
  // void disallowGlow ()
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    print(screenSize);
    return new Container(
      color: Colors.transparent,
      // height: screenSize.height - 150.0,
      constraints: new BoxConstraints(maxHeight: screenSize.height - 120.0),
      child: new ListView.builder(
        itemCount: 20,
        padding: new EdgeInsets.all(0.0),
        scrollDirection: Axis.vertical,
        // itemExtent: 130.0,
        itemBuilder: (context,index) {
          print(MediaQuery.of(context).size);
          if(index == 0) {
            return new MyStories();
          } else { 
          return new Post();
          }
        },
      )
  );
  }
}

class Post extends StatelessWidget{
@override
Widget build(BuildContext context) => new Container(
  child: new Column(
    children: <Widget>[
      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(top: 5.0,left: 5.0),
            child: new Row(
              children: <Widget>[
                new PostIcon(),
                new Container(
                  padding: new EdgeInsets.only(left: 5.0),
                  child: new Text('data',style: new TextStyle(fontSize: 12.0),),
                )
              ],
            ),
          ),
          new IconButton(
            icon: new Icon(Icons.more_vert),
          )
        ],
      )
    ],
  ),
);
}

class PostIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) => new Stack(
    children: <Widget>[
      new Container(
        height: 34.0,
        width: 34.0,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(50.5),
          gradient: new LinearGradient(
            colors: [
              const Color(0xFFfdf497),
              const Color(0xFFfd5949),
              const Color(0xFFd6249f),
              const Color(0xFF285AEB),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [0.05,0.30,0.60, 1.0],
            tileMode: TileMode.clamp
          ),
        ),
      ),
      new Container(
        height: 30.0,
        width: 30.0,
        margin: new EdgeInsets.only(top: 2.0,left: 2.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(50.5),
          border: new Border.all(
          width: 2.0,
          color: Colors.white
          )
        ),
        child: new CircleAvatar(
          radius: 50.5,
          backgroundImage: new NetworkImage('https://instagram.fbom1-2.fna.fbcdn.net/vp/c3e31ba6c731d53a586571c7bf69b687/5B14A9B9/t51.2885-19/s150x150/25025729_167768233981692_3323823934234689536_n.jpg'),
        ),
      ),
      
    ],
  );
}