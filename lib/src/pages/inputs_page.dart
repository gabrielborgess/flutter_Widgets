import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
        children: <Widget>[
          _crearInputs(),
          Divider(),
          _crearPersonas(),
        ],
      ),
    );
  }

  Widget _crearInputs() {

    return TextField(
//      autofocus: true,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
          counter: Text('Cantidad de letras 0'),
          hintText: 'Ejemplo: Gabriel borges',
          labelText: 'Nombre',
          helperText: 'Si no sabes tu nombre inventalo',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
            border:OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
      ),
      onChanged: (value){
            setState(() {
              _nombre=value;
            });
      },
    );
  }

  Widget _crearPersonas() {
    return ListTile(
      title: Text('Tu nombre es $_nombre'),
    );
  }
}

