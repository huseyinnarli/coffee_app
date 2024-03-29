import 'package:flutter/material.dart';
import 'package:newapp/pages/coffeepage.dart';
import 'package:newapp/pages/maintab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Color(0xffB67F2A),
          unselectedLabelColor: Color(0xffDDDDDD),
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
      home: const CoffeePage(),
    );
  }
}
