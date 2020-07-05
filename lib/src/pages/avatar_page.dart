import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Alert Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.larazon.es/resizer/HyCo4xCtUdGaJg5h3clZ-XFqmfI=/1260x840/smart/filters:format(webp)/arc-photo-larazon.s3.amazonaws.com/eu-central-1-prod/public/Q7ZT5RMGBBE7JGA5FQGFYHSFPE.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('GB'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],

      ),
      body:Center(
        child:FadeInImage(
          image: NetworkImage('https://i.blogs.es/82402a/rami-malek-mr-robot-cuarta-temporada-opinion/1366_2000.jpeg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ) ,
    );
  }
}
