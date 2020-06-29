
import 'package:flutter/material.dart';

class  HomePageTemp extends StatelessWidget {

  final opciones=["uno","dos","tres","cuatro"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('titulo'),
      ),
      body: ListView(
        children:_crearItems(),
      ),
    );
  }


  List<Widget> _crearItems(){
    List<Widget> lista= new List<Widget>();

    for(var recorrer in opciones){
      final tempWidget=ListTile(
        title: Text(recorrer.toString()),
      );
      lista.add(tempWidget);
      lista.add(Divider(color: Colors.red,));
    }
    return lista;
  }


}
