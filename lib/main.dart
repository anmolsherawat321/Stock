import 'package:flutter/material.dart';
import 'package:stock/Screens/HomePage.dart';
import 'Screens/Signin.dart';
import 'Screens/Signup.dart';
import 'Screens/Details.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Signin(),
      routes: <String,WidgetBuilder>{
        "/HomePage": (context) => const HomePage(),
        "/SigninPage": (context) => const Signin(),
        "/SignupPage": (context) => const Signup(),
        //"/DetailsPage": (context) => Details(),
      },
    );
  }
}