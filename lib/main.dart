import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'layouts/Home.dart';

void main(){
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

return MaterialApp(
  theme: ThemeData(
    textTheme:GoogleFonts.poppinsTextTheme(
      Theme.of(context).textTheme,
    ),
  ) ,
      home: Home(

      ));
  }
}

