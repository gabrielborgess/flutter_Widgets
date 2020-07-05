import 'package:flutter/material.dart';
import 'dart:math';

class  AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}
var random=new Random();
int randomNumber = random.nextInt(100);


class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width=50.0;
  double _heigth=50.0;
  var random=new Random();
  double doubleInRange(Random source, num start, num end) =>
      source.nextDouble() * (end - start) + start;

  final List<Color> circleColors = [Colors.red, Colors.blue, Colors.green,
    Colors.white,Colors.deepOrange,Colors.purpleAccent];
  Color randomGenerator() {
    return circleColors[new Random().nextInt(2)];
  }

//  final List<BoxShape> Bordes=[BoxShape.circle,BoxShape.rectangle];

  BorderRadiusGeometry _borderRadius=BorderRadius.circular(randomNumber.toDouble());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: randomGenerator(),
//            shape: Bordes[randomNumber]
          ), duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.red,
        onPressed: (){
          setState(() {
            _width=doubleInRange(random, 50, 500);
            _heigth=doubleInRange(random, 50, 500);
            print(_heigth);
          });
        },
      ),
    );
  }
}
