import 'package:flutter/material.dart';
import 'package:login_page/mail_check.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
            'WIDGET COMPANY',
            style: TextStyle(
                fontSize: 33.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
          const Text('Get it done right away.'),
          const SizedBox(height: 50.0),
          const Column(
            children: [
              Text(
                'Reset Password',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                ('Enter the email associated with your account and we will send you an email with instruction to reset your password.'),
              ),
            ],
          ),
          const TextField(
            decoration: InputDecoration(
                labelText: 'Email', hintText: 'Enter your email'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const EmailChk(),
                            ));
            },
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }
}
