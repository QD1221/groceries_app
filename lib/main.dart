import 'package:flutter/material.dart';
import 'package:groceries_app/src/ui/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quang Tran',
      home: MainPage(),
    );
  }
}
