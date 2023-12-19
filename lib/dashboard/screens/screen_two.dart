import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ln_go_router/dashboard/screens/screen_three.dart';

class ScreenTwo extends StatelessWidget {
  static const path = '/screen-two';
  const ScreenTwo({super.key});

  void _screenThree(BuildContext context) async {
    if (!context.mounted) return;

    context.push(ScreenThree.path
        .replaceFirst(':id', '1')
        .replaceFirst(':name', 'John'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Screen Two'),
          centerTitle: true,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Screen Two'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _screenThree(context),
          tooltip: 'Increment',
          label: const Text('Go Back'),
          icon: const Icon(Icons.navigate_before_rounded),
        ));
  }
}
