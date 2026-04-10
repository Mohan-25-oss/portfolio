import 'package:flutter/material.dart';
import 'package:flutter_portfolio/pages/myProfile.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // first screen
      initialRoute: '/myProfile',

      routes: {
        '/myProfile': (context) => const MyProfile(),
      },
    );
  }
}