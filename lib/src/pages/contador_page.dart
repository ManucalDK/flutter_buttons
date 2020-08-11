import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return new _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 21;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Numero de Taps: ',
                style: _estiloTexto,
              ),
              Text(
                '$_conteo',
                style: _estiloTexto,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
          onPressed: () {
            _modificarContador(-1);
          },
          child: Icon(Icons.remove),
        ),
        Expanded(child: SizedBox(width: 5)),
        FloatingActionButton(
          onPressed: () {
            _reiniciarContador();
          },
          child: Icon(Icons.replay),
        ),
        SizedBox(width: 5),
        FloatingActionButton(
          onPressed: () {
            _modificarContador(1);
          },
          child: Icon(Icons.add),
        ),
      ],
    );
  }

  void _modificarContador(int valor) {
    _conteo += valor;
    setState(() {});
  }

  void _reiniciarContador() {
    _conteo = 0;
    setState(() {});
  }
}
