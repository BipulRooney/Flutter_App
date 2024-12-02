import 'package:flutter/material.dart';

class PasswordRst extends StatefulWidget {
  const PasswordRst({super.key});

  @override
  State<PasswordRst> createState() => _PasswordRstState();
}

class _PasswordRstState extends State<PasswordRst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          const Text(
            'PULSE',
            style: TextStyle(
                color: Color.fromARGB(255, 56, 75, 220),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30.0),
          const Text(
            'Manage your wallet',
            style: TextStyle(
              color: Color.fromARGB(255, 56, 75, 220),
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 50.0),
          const Text(
            'Create new password',
            style: TextStyle(
              color: Color.fromARGB(255, 56, 75, 220),
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Text(
            'A new password must be different from previously used password',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 20.0),
          const TextField(
            decoration: InputDecoration(
                labelText: "Password", hintText: 'Enter your password'),
          ),
          const SizedBox(height: 20.0),
          const TextField(
            decoration: InputDecoration(
                labelText: "Confirm Password", hintText: 'Enter your password again'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }
}
