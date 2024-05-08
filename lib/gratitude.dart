import 'package:flutter/material.dart';

class Gratitude extends StatelessWidget {
  const Gratitude({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gratitude'),
      ),
      body: const Center(
        child: Text(
          'This is the Gratitude Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
