import 'package:flutter/material.dart';
import 'package:todo/ui/home/home_screen.dart';
import 'package:todo/ui/home/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',debugShowCheckedModeBanner:false,
      theme: MyTheme.lightTheme,
      routes: {
        homeScreen.routName:(_)=>homeScreen()
      },
      initialRoute: homeScreen.routName,


    );
  }
}


