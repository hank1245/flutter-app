import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int count = 0;

  void onPressed() {
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFFF4EDDB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Count',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              '$count',
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
            IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.add_box_rounded),
              iconSize: 40,
            )
          ],
        ),
      ),
    ));
  }
}
