import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/components/screens/Authentification/loginPage.dart';
import 'package:twitter_clone/components/screens/homePages/homeScreen.dart';
import '../screens/Authentification/authentificationPage2.dart';
import '../../notfound.dart';
import '../screens/Authentification/authentificationPage3.dart';
import '../screens/Authentification/authentificationPageFinish.dart';
import 'route_name.dart';

class CustomRoute {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    var r = MaterialPageRoute(builder: (_) => NotFoundPage());
    switch (settings.name) {
      case authentificationAdd:
        r = MaterialPageRoute(
          builder: (_) => AuthPage2(),
        );
        break;
      case authentificationAddlangue:
        r = MaterialPageRoute(
          settings: settings,
          builder: (_) => AuthPage3(),
        );
        break;
      case authentificationFinish:
        r = MaterialPageRoute(
          settings: settings,
          builder: (_) => AuthFinish(),
        );
        break;
      case homeRoute:
        r = MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
        break;
      case authentificationlog:
        r = MaterialPageRoute(
          builder: (_) => LoginPage(),
        );
        break;
    }
    return r;
  }
}
