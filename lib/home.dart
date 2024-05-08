import 'package:flutter/material.dart';
import 'about.dart';
import 'gratitude.dart';
import 'order_form.dart'; // Import the OrderForm page

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first app'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print('Menu icon pressed');
          },
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => _openPageAbout(context: context),
            icon: const Icon(Icons.info_outline),
          ),
          IconButton(
            onPressed: () {
              // Implement search functionality here
              print('Search icon pressed');
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Text('Grateful for: user'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openPageGratitude(context: context),
        tooltip: 'Gratitude',
        child: const Icon(Icons.sentiment_dissatisfied),
      ),
    );
  }

  void _openPageAbout({required BuildContext context}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => About()),
    );
  }

  void _openPageGratitude({required BuildContext context}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Gratitude()),
    );
  }

  void _openPageOrderForm({required BuildContext context}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OrderForm()), // Navigate to the OrderForm page
    );
  }
}
