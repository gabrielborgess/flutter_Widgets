import 'package:flutter/material.dart';



class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Alert Page'),
    ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_return),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          color: Colors.white,
          shape: StadiumBorder(),
          onPressed:()=>_mostrarAlert(context),
        ),
      ),
    );
  }




  void _mostrarAlert(BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: true,
        builder:(context){
          return AlertDialog(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular
              (30.0)),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                FlutterLogo(size: 100,),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: (){

                },
              ),FlatButton(
                child: Text('Cancelar'),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
    );
  }


}
