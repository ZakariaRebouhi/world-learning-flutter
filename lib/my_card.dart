import 'package:flutter/material.dart';

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,

      appBar: AppBar(title: const Text("My Card Profile"), centerTitle: true),

      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Profile picture using emoji
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(50)),
                child: const Text("👨‍💻", style: TextStyle(fontSize: 50)),
              ),

              const SizedBox(height: 20),

              // Name
              const Text("Zakaria Rebouhi", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),

              const SizedBox(height: 10),

              // Job title
              const Text("Flutter Developer", style: TextStyle(fontSize: 18, color: Colors.grey)),

              const SizedBox(height: 30),

              // Phone row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("📞 ", style: TextStyle(fontSize: 20)),
                  Text("+213 555 123 456", style: TextStyle(fontSize: 18)),
                ],
              ),

              const SizedBox(height: 15),

              // Email row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("📧 ", style: TextStyle(fontSize: 20)),
                  Text("zakaria@email.com", style: TextStyle(fontSize: 18)),
                ],
              ),

              const SizedBox(height: 30),

              // Button
              ElevatedButton(
                onPressed: () {
                  print("Contact button clicked!");
                },
                child: const Text("Contact Me", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
