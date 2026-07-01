import 'package:flutter/material.dart';

class SimplesScreen extends StatelessWidget {
  const SimplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simples Screen"), centerTitle: true),
      body: Center(
        child: ElevatedButton(onPressed: () {}, child: const Text("Click Me!")),
      ),
    );
  }
}
