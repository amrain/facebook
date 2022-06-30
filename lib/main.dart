import 'package:facebook/Facebook.dart';
import 'package:facebook/Facebook1.dart';
import 'package:facebook/Facebook2.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType){

      return MaterialApp(
        home: Facebook1(),
        debugShowCheckedModeBanner: false
      );
    }

    );
      
  }
}


