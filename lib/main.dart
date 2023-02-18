import 'package:flutter/material.dart';
import 'package:news_app_flutter/view/view.dart';
import 'package:news_app_flutter/widgets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showingsplash = true;
  loadhome() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showingsplash = false;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadhome();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Snack',
      home: showingsplash ? Splashscreen() : HomeScreen(),
    );
  }
}
