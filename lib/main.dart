import 'package:flutter/material.dart';
import 'package:study/src/pages/alert_page.dart';
import 'package:study/src/routes/routes.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
//      home: Scaffold(
//        body:HomePage(),
//        ),
    initialRoute: '/',
    routes:getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print("Ruta llamada ${settings}");
        return MaterialPageRoute(
          builder:(BuildContext context)=>AlertPage()
        );
      },
    );
  }
}
