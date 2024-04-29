// main.dart
import 'package:commonwd/home.dart';
import 'package:flutter/material.dart';
import 'order_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OrderForm(),
    );
  }
}
