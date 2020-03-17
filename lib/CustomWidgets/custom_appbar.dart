import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newshouse/CustomUtilities/customTextStyles.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;
  final GlobalKey<ScaffoldState> scaffoldKey;

  CustomAppBar({this.title, this.scaffoldKey}) : assert(title != null);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return new Container(
      height: statusBarHeight + barHeight,
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                const Color(0xFF7b00e0),
                const Color(0XFF9507fa),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: new Center(
          child: Padding(
              padding: EdgeInsets.only(top: statusBarHeight),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                      child: Text(
                        'Home',
                        style: CustomTextStyles.appBarTextStyle,
                      ),
                      onTap: () {
                        (scaffoldKey != null)
                            ? scaffoldKey.currentState.openDrawer()
                            : () {}();
                      }),
                  SizedBox(
                    width: 49,
                  ),
                  Text(
                    "News House",
                    style: CustomTextStyles.appBarTitleStyle,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    iconSize: 25,
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications),
                    iconSize: 25,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
