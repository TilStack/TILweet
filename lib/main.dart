import 'package:flutter/material.dart';
import 'package:twitter_clone/components/screens/splashScreen.dart';

import 'components/routes/custum_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TILWeet',
      home: SplashScreen(),
      onGenerateRoute: CustomRoute.allRoutes,
    );
  }
}
