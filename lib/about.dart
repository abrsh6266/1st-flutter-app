import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}); // Corrected syntax
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(36.0),
          child: Text('About Page', style: TextStyle(fontSize: 80.0)),
        ),
      ),
    );
  }
}
