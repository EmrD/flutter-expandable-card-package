Expandable Card Widget In Flutter. This is an exmaple package to show how to make an widget with Flutter.

## Features

- Expandable Card View
- Custom Colors And Texts
- Simple Usage

## Getting started

- Install the package: `flutter pub add expandablecard`

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:expandablecard/expandablecard.dart';

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
          child: ExpandableCard(
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
```