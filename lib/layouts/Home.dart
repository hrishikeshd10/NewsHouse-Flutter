import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newshouse/CustomWidgets/custom_appbar.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey<ScaffoldState>();
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return new Scaffold(
      key: homeScaffoldKey,
      drawer: Container(
        color: Colors.green,
        width: 300,
      ),
      body: new Column(
        children: <Widget>[
          new CustomAppBar(title: "News House",
          scaffoldKey: homeScaffoldKey,),
        ],
      ),
    );
  }
}
