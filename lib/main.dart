// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("slider seekbar in flutter")),
      body: Center(child: SliderWidget()),
    ));
  }
}

class SliderWidget extends StatefulWidget {
  @override
  SliderWidgetState createState() => new SliderWidgetState();
}

class SliderWidgetState extends State {
  int valueHolder = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Slider(
                  value: valueHolder.toDouble(),
                  min: 1,
                  max: 100,
                  divisions: 100,
                  activeColor: Colors.green,
                  inactiveColor: Colors.grey,
                  label: "${valueHolder.round()}",
                  onChanged: (double newValue) {
                    setState(() {
                      valueHolder = newValue.round();
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '${newValue.round()}';
                  })),
          Text(
            '$valueHolder',
            style: TextStyle(fontSize: 22),
          )
        ],
      ),
    );
  }
}

//practice
//void main() => runApp(new MyApp(
//      TextInput: new Text("Provided By Main"),
//    ));

//class MyApp extends StatefulWidget {
//  MyApp({this.TextInput});
//
//  final Widget TextInput;
//
//  MyAppState createState() => new MyAppState();
//}
//
//class MyAppState extends State<MyApp> {
//  bool checkBoxValue = false;
//  String actionText = "Default";
//
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//        title: "MySliderTestApp",
//        home: new Scaffold(
//            appBar: new AppBar(
//              title: new Text("Hello Flutter App"),
//              actions: <Widget>[
//                new IconButton(
//                    icon: new Icon(Icons.add_comment),
//                    onPressed: () {
//                      setState(() {
//                        actionText = "New Text";
//                      });
//                    }),
//                new IconButton(
//                    icon: new Icon(Icons.add_comment),
//                    onPressed: () {
//                      setState(() {
//                        actionText = "Default";
//                      });
//                    })
//              ],
//            ),
//            body: new Center(
//                child: new Column(
//              children: <Widget>[
//                widget.TextInput,
//                new Text(actionText),
//                new Checkbox(
//                    value: checkBoxValue,
//                    onChanged: (bool newValue) {
//                      setState(() {
//                        checkBoxValue = newValue;
//                      });
//                    })
//              ],
//            ))));
//  }
//}

//class MyApp extends StatelessWidget {
//  MyApp({this.TextInput});
//  final Widget TextInput;
//  bool checkBoxValue = false;
//  @override
//  Widget build(BuildContext ctxt) {
//    return new MaterialApp(
//      title: "MySampleApplication",
//      home: new Scaffold(
//          appBar: new AppBar(
//            title: new Text("Hello Flutter App"),
//          ),
//          body: new Center(
//            child: new Column(
//              children: <Widget>[
//                TextInput,
//                new Checkbox(
//                    value: checkBoxValue,
//                    onChanged: (bool newValue){
//                      checkBoxValue = newValue;
//                    }
//                )
//              ],
//            ),
//          )
//      ),
//    );
//  }
//}

//void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Welcome to Flutter',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Welcome to Flutter'),
//        ),
//        body: Center(
//          child: Text('Hello World'),
//        ),
//      ),
//    );
//  }
//}

//void main() {
//  runApp(new MaterialApp(
//    home: new MyApp(),
//  ));
//}
//
//
//class MyApp extends StatefulWidget {
//  @override
//  _State createState() => new _State();
//}
//
//class _State extends State<MyApp>{
//  @override
//  Widget build(BuildContext context){
//
//  }
//}
