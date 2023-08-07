import 'package:flutter/material.dart';

import 'package:pocket_books/utils/routesGenerator.dart';
import 'package:pocket_books/utils/routesName.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(primaryColor: Color.fromARGB(255, 248, 247, 245),primarySwatch: Colors.amber,),
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'Pocket Books',
      initialRoute: RouteName.splashScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
