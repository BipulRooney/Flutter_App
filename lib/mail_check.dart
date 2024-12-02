import 'package:flutter/material.dart';

class EmailChk extends StatefulWidget {
  const EmailChk({super.key});

  @override
  State<EmailChk> createState() => _EmailChkState();
}

class _EmailChkState extends State<EmailChk> {
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
            'Check your mail',
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
            'We have sent a password recover instruction to your email',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 18.0,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Haven't received an email yet?"),
          ),
        ],
      ),
    );
  }
}
