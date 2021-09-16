import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage>{
  final _estiloTexto = TextStyle(fontSize: 25);
  final _estiloTextoNumbert = TextStyle(fontSize: 40);
  int _contador = 0;
  @override
  Widget build(BuildContext context) {

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
            Text('Número de click', style: _estiloTexto),
            Text('$_contador',style: _estiloTextoNumbert)
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(width: 40.0),
          FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _resetearContador),
          Expanded(child: SizedBox()),
          FloatingActionButton(child: Icon(Icons.remove), onPressed: _decrementarContador),
          Expanded(child: SizedBox()),
          FloatingActionButton(child: Icon(Icons.add), onPressed: _incrementarContador)
      ]
    );
  }

  void _incrementarContador() {
    _contador++;
    setState((){});
  }

  void _decrementarContador() {
    if(_contador != 0){
      _contador--;
    }
    setState((){});
  }

  void _resetearContador() {
    _contador=0;
    setState((){});
  }
}