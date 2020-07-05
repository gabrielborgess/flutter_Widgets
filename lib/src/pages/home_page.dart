import 'package:flutter/material.dart';
import 'package:study/src/pages/alert_page.dart';
import 'package:study/src/providers/menu_provider.dart';
import 'package:study/src/utils/icono_string_util.dart';

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
        children: _mostrarlista(snapshot.data,context),
      );
    },
  );

  }

  List<Widget> _mostrarlista(List<dynamic> data,BuildContext context) {

    final List<Widget> opciones=[];

    data.forEach((element) {
      final widgetTemp=ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){

//          final route=MaterialPageRoute(
//            builder: (context)=>AlertPage()
//
//          );
//
//          Navigator.push(context,route);
        Navigator.pushNamed(context,element['ruta']);
        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());

    });
    return opciones;
  }
}
