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
  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder:(context,AsyncSnapshot<List<dynamic>> snapshot){
      return ListView(
        children: _mostrarlista(snapshot.data),
      );
    },
  );

  }

  List<Widget> _mostrarlista(List<dynamic> data) {
    final List<Widget> opciones=[];

    data.forEach((element) {
      final widgetTemp=ListTile(
        title: Text(element['texto']),
        leading: Icon(Icons.info_outline),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){

        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());

    });
    return opciones;
  }
}
