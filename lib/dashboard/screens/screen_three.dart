import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  static const path = '/screen-three/:id/:name';
  const ScreenThree({super.key, required this.id, required this.name});
  final int id;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Three'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('id: $id'), Text('name : $name')],
        ),
      ),
    );
  }
}
