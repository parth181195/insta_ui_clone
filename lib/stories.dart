
import 'package:flutter/material.dart';

class MyStories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(top: 10.0),
      // height: statusBarHeight + barHeight,
      decoration:  new BoxDecoration(
        color: Colors.transparent,
      ),
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(left: 10.0),
                child: new Text('Stories',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              new FlatButton(
                color: Colors.transparent,
                onPressed: () => Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('watch all'))),
                child: new Row(
                  children: <Widget>[
                    const Icon(Icons.play_arrow,color: Colors.black,),
                    new Text('Watch All',style: new TextStyle(color: Colors.black),)
                  ],
                ),
              )
            ],
          ),
          
          new Container(
            constraints: new BoxConstraints(maxWidth: double.INFINITY,maxHeight: 120.0),
            child: new ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemExtent: 100.0,
              padding: new EdgeInsets.all(10.0),
              itemBuilder: (context, int) {return new StoryBuilder(int);} ,
            ),
          ), 
        ],
      ),
    );
  }
}



class StoryBuilder extends StatelessWidget{
  final int data;
  StoryBuilder(this.data);

  @override
  Widget build(BuildContext context){
    return new GestureDetector(
      onTapUp: (lol) {
        Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('story $data')));
      },
      child: new Stack(
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
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
            shape: BoxShape.circle,
            ),
          ),
          new Container(
            child: new CircleAvatar(
              radius: 50.5,
              backgroundImage: new NetworkImage('https://instagram.fbom1-2.fna.fbcdn.net/vp/c3e31ba6c731d53a586571c7bf69b687/5B14A9B9/t51.2885-19/s150x150/25025729_167768233981692_3323823934234689536_n.jpg') ,
            ),
            margin: new EdgeInsets.all(13.0),
            decoration: new BoxDecoration(
            // shape: BoxShape.circle,
            borderRadius: new BorderRadius.circular(50.5),
            border: new Border.all(
              width: 2.0,
              color: Colors.white
              )
            ),
          ),
        new Transform(
          transform: new Matrix4.translationValues(0.0, 95.0, 0.0),
          child: new Container(
            width: 100.0,
            child: new Text("story $data",textAlign: TextAlign.center,style: new TextStyle(fontWeight: FontWeight.w400),),
          ),
        )
        ],
      )
    );
  }
}
      //     new Container(
      //   margin: new EdgeInsets.all(10.0),
      //   decoration: new BoxDecoration(
      //       gradient: new LinearGradient(
      //     colors: [
      //       const Color(0xFF3366FF), 
      //       const Color(0xFF00CCFF),
      //     ],
      //     begin: const FractionalOffset(0.0, 0.0),
      //     end: const FractionalOffset(1.0, 0.0),
      //     stops: [0.0, 1.0],
      //     tileMode: TileMode.clamp
      //   ),
      //     shape: BoxShape.circle,
      //   ),
      // ),
      //     new Container(
      //   margin: new EdgeInsets.all(12.0),
      //   decoration: new BoxDecoration(
      //     color: Colors.black,
      //     shape: BoxShape.circle,
      //     border: new Border.all(
      //       width: 2.0,
      //       color: Colors.white
      //     )
      //   ),
      // ),