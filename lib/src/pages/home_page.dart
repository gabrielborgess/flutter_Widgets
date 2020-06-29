import 'package:flutter/material.dart';

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
    return ListView(
      children:_mostrarlista(),
    );
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
