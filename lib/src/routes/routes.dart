import 'package:flutter/material.dart';
import 'package:study/src/pages/alert_page.dart';
import 'package:study/src/pages/avatar_page.dart';
import 'package:study/src/pages/home_page.dart';



Map<String,WidgetBuilder> getApplicationRoutes(){

  return <String,WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
  };

}
