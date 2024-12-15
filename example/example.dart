import 'package:flutter/material.dart';
import 'package:simplexpandablecard/simplexpandablecard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expandable Card Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SimpleExpandableCard(
            title: 'Expandable Card Title',
            cardColor: Colors.lightBlue[50]!,
            titleColor: Colors.deepPurple,
            iconColor: Colors.deepPurpleAccent,
            borderRadius: 12.0,
            padding: const EdgeInsets.all(24.0),
            child: const Text('Here is the expanded content'),
          ),
        ),
      ),
    );
  }
}
