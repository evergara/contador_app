import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);
  final int contador = 0;
  @override
  Widget build(BuildContext context) {
    final estiloTexto = TextStyle(fontSize: 25);
    final estiloTextoNumbert = TextStyle(fontSize: 40);
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('title'),
          centerTitle: true,
          elevation: 0.5,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de click', style: estiloTexto),
            Text('$contador',style: estiloTextoNumbert)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()=>print('Hola...'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat ,
    );
  }

}