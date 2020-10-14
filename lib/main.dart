import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleapp/constants.dart';
import 'package:sampleapp/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
       // primarySwatch: Colors.white,
        primaryColor: kWhiteBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
  home: HomePage(),
    );
  }
}