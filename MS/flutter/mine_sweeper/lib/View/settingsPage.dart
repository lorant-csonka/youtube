import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:Minesweeper/Model/enums.dart';
import 'package:Minesweeper/Model/table.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SettingsPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MyHomePage(title: ". : [ S E T T I N G S ] : .");
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                     SimpleButton("[ L E V E L ] : e a s y ", Colors.grey[800], Colors.white, FontAwesomeIcons.trophy),
                     SimpleButton("[ F I E L D   S I Z E ] : 12", Colors.grey[800], Colors.white, FontAwesomeIcons.cubes),
                     SimpleButton("[ R E S E T   L E A D E R B O A R D ]", Colors.grey[800], Colors.white, FontAwesomeIcons.toilet),
                     SimpleButton("[ L E T   M E   B E   F I R S T ! ]", Colors.grey[800], Colors.white,  FontAwesomeIcons.streetView),
                ]))));
  }

  Widget SimpleButton(
      String text, Color borderColor, Color bgColor, IconData icon) {
    return Padding(
        padding: EdgeInsets.only(left:20,right:20, top:10, bottom:10),
        child: Container(
            height: 40,
            width: MediaQuery.of(context).size.width - 20,
            padding: EdgeInsets.only(left: 6, right: 6, bottom: 2),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: bgColor,
                border: Border.all(
                  color: borderColor,
                  width: 3.0,
                )), //       <--- BoxDecoration here
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(icon),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(text,
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center)),
              ],
            )));
  }

}
