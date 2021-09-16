import 'package:flutter/material.dart';

import 'package:contador_app/src/page/home_page.dart';
import 'package:contador_app/src/page/contador_page.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Center(
        child: ContadorPage(),
      ),
    );
  }

}