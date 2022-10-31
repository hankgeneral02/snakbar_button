import 'package:flutter/material.dart';

void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar 練習'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('410630957姜君翰'),
            action: SnackBarAction(
              label: '按我',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('猜猜我是誰'),
      ),
    );
  }
}