import 'package:flutter/material.dart';
import 'package:study/src/pages/alert_page.dart';
import 'package:study/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],
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
