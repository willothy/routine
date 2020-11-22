import 'dart:developer';
//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RoutineHomePage extends StatefulWidget {
  RoutineHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _RoutineHomePageState createState() => _RoutineHomePageState();
}

class _RoutineHomePageState extends State<RoutineHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void tap() {

  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height/7),
            ),
            Column(
              children: [
                
                /*Center(
                  child: CupertinoButton(
                    color: Colors.blue,
                    padding: EdgeInsets.all(5),
                    
                  ),
                ),*/
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PageButton(label:"Daily", width: 140),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    PageButton(
                      label:"Events", 
                      width: 140,
                      onTap: () => {log("Events was clicked")}
                      
                    )
                  ],
                ),
              ]
            )
          ],
        ),
      )
    );
  }
}

class PageButton extends StatelessWidget {
  String label;
  double width;
  Function onTap;

  PageButton({String label, double width=null, Function onTap}) {
    this.label = label;
    this.width = width;
    this.onTap = onTap;
  }

  @override 
  Widget build(BuildContext context) {
    return GestureDetector (
      child: Container(
        child: Center(
          child: new Text(
            label, 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
        ),
        width: this.width,
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          
        ),
      ),
      onTap: this.onTap
    );
  }
}