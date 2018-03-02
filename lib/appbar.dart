
import 'package:flutter/material.dart';


class MyAppBar extends StatelessWidget {
  final double barHeight = 56.0;  
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
      .of(context)
      .padding
      .top;
    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight+ 10.0, bottom: 10.0),
      height: statusBarHeight + barHeight,
      decoration:  new BoxDecoration(
        color: Colors.white,
        boxShadow: [new BoxShadow(color: Colors.black12, blurRadius: 4.0,)]
      ),
      child: new Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.camera_alt,color: Colors.black,)
            ),
            new Image(
              image: new AssetImage('assets/images/logo.png'),
            ),
            new Transform.rotate(
              origin: new Offset(-5.0, 0.0),
              angle: -0.785398,
              child: new IconButton(
                icon: new Icon(Icons.send,color: Colors.black,)
              ),
            )
          ],
      ),
    );
  }
}