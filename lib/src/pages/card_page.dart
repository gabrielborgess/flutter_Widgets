import 'package:flutter/material.dart';

class  CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Cards"),),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
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

  Widget _cardTipo2() {
    return Card(
      child:Column(
        children: <Widget>[
//          Image(
//            image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/000/246/312/original/mountain-lake-sunset-landscape-first-person-view.jpg'),
//          ),
        FadeInImage(image: NetworkImage('https://static.vecteezy'
            '.com/system/resources/thumbnails/000/246/312/original/mountain'
            '-lake-sunset-landscape-first-person-view.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
          Container(
            child: Text('Hello wrold'),
            padding: EdgeInsets.all(10.0),)
        ],
      ),
    );
  }
}
