import 'package:flutter/material.dart';
import 'package:lifting_up_code/my_home_page.dart';
import 'package:lifting_up_code/my_second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => MyHomePage(),
        'second': (context) => MySecondPage(),
      },
    );
  }
}
