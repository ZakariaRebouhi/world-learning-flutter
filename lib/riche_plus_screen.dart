import 'package:flutter/material.dart';

class RichPlusScreen extends StatefulWidget {
  const RichPlusScreen({super.key});

  @override
  State<RichPlusScreen> createState() => _RichPlusScreenState();
}

class _RichPlusScreenState extends State<RichPlusScreen> {
  int balance = 999999;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,

      appBar: AppBar(title: const Text("I'm Rich 💎")),

      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          width: 350,
          height: 450,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title
              const Text("I Am Rich", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),

              const SizedBox(height: 20),

              // Diamond made with text
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(20)),
                child: const Text("💎", style: TextStyle(fontSize: 100)),
              ),

              const SizedBox(height: 30),

              // Row for balance
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Balance: ", style: TextStyle(fontSize: 20)),
                  Text("$balance USD", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),

              const SizedBox(height: 30),

              // Button
              ElevatedButton(
                onPressed: () {
                  print("Rich Button Clicked!");
                  setState(() {
                    balance += 10;
                  });
                },
                child: const Text("more money", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
