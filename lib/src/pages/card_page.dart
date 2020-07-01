import 'package:flutter/material.dart';

class  CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Cards"),),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album,color: Colors.red,),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ultrices mauris leo, nec laoreet odio varius et. Vestibulum pharetra mollis vestibulum.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: (){

                },
              ),FlatButton(
                child: Text('Cancelar'),
                onPressed: (){

                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
