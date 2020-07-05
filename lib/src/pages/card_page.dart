import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cards"),
          actions: <Widget>[
          IconButton(
          icon:Icon(Icons.close),
      onPressed: () {
        Navigator.pop(context);
      }, )
          ],),
    body: ListView(
    padding: EdgeInsets.all(10.0),
    children: <Widget>[
    _cardTipo1(),
    SizedBox(height: 30.0,),
    _cardTipo2(),
    SizedBox(height: 30.0,),_cardTipo1(),
    SizedBox(height: 30.0,),
    _cardTipo2(),
    SizedBox(height: 30.0,),_cardTipo1(),
    SizedBox(height: 30.0,),
    _cardTipo2(),
    SizedBox(height: 30.0,),_cardTipo1(),
    SizedBox(height: 30.0,),
    _cardTipo2(),
    SizedBox(height: 30.0,),_cardTipo1(),
    SizedBox(height: 30.0,),
    _cardTipo2(),
    SizedBox(height: 30.0,),_cardTipo1(),
    SizedBox(height: 30.0,),
    _cardTipo2(),
    SizedBox(height: 30.0,),_cardTipo1(),
    SizedBox(height: 30.0,),
    _cardTipo2(),
    SizedBox(height: 30.0,),_cardTipo1(),
    SizedBox(height: 30.0,),
    _cardTipo2(),
    SizedBox(height: 30.0,),_cardTipo1(),
    SizedBox(height: 30.0,),
    _cardTipo2(),
    SizedBox(height: 30.0,),
    ],
    ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//      elevation: null,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.red,),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ultrices mauris leo, nec laoreet odio varius et. Vestibulum pharetra mollis vestibulum.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () {

                },
              ), FlatButton(
                child: Text('Cancelar'),
                onPressed: () {

                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final tarjeta = Container(

      child: Column(
        children: <Widget>[
//          Image(
//            image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/000/246/312/original/mountain-lake-sunset-landscape-first-person-view.jpg'),
//          ),
          FadeInImage(image: NetworkImage(
              'https://static.vecteezy.com/system/resources/thumbnails/000/246/312/original/mountain-lake-sunset-landscape-first-person-view.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),
          Container(
            child: Text('Hello wrold'),
            padding: EdgeInsets.all(10.0),)
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0)
            )
          ]
      ),
      child: ClipRRect(
        child: tarjeta,
        borderRadius: BorderRadius.circular(30.0),
      ),

    );
  }
}
