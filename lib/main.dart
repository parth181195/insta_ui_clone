import 'package:flutter/material.dart';
import './appbar.dart';
import './posts.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //  GlowingOverscrollIndicator({color: Colors.transparent,axisDirection: AxisDirection.down,});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.white,
        child: new Column(
          children: <Widget>[
            new MyAppBar(),
            new PostWrapper(),
          ],
        )
      ),
    );
  }
}
