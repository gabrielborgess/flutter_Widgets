import 'package:flutter/material.dart';
import 'package:study/src/providers/menu_provider.dart';

class  HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
      ),
      body: _lista(),
    );
  }



  Widget _lista(){
    print(menuProvider.opciones);
  }

  _mostrarlista() {
    return [
      ListTile(title:Text('Hola mundo')),
      Divider(),
      ListTile(title:Text('Hola mundo')),
      Divider(),
      ListTile(title:Text('Hola mundo')),
      Divider(),
      ListTile(title:Text('Hola mundo')),
      Divider(),
      ListTile(title:Text('Hola mundo')),
      Divider(),
      ListTile(title:Text('Hola mundo')),
      Divider(),
      ListTile(title:Text('Hola mundo')),
    ];
  }
}
