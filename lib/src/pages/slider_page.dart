import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  bool _bloquearCheck=true;

  double _valorSlider=100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body:Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),

    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.purpleAccent,
      label: 'Tamaño de la imagen',
//      divisions: 20,
      value:_valorSlider,
      min: 10,
      max: 400,
      onChanged:(_bloquearCheck)?null:(value) {
        setState(() {
          _valorSlider=value;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://i.dlpng.com/static/png/6683558_preview.png'),
      width: _valorSlider,
      fit:BoxFit.contain
    );
  }

  Widget _crearCheckbox() {
//    return Checkbox(
//      value: _bloquearCheck,
//      onChanged: (value) {
//        setState(() {
//          _bloquearCheck=value;
//        });
//      },
//    );
  return CheckboxListTile(
    value: _bloquearCheck,
      onChanged: (value) {
        setState(() {
          _bloquearCheck=value;
        });
      },
    title: Text('Bloquear Slider'),
  );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (value) {
        setState(() {
          _bloquearCheck=value;
        });
      },
    );
  }
}

