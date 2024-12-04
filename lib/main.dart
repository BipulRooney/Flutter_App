import 'package:flutter/material.dart';
import 'package:login_page/dashboard_page.dart';
import 'package:login_page/forgot_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _rememberMe = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/minimalBg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                'Welcome back! Please enter your details.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty
                              ? 'Please fill this field.'
                              : null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty
                              ? 'Please fill this field.'
                              : null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: _rememberMe,
                              onChanged: (bool? value) {
                                setState(() {
                                  _rememberMe =
                                      value ?? false; // Use null coalescing
                                });
                              },
                            ),
                            const Text('Remember me for next 30 days.'),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ForgotPasswordPage(),
                            ));
                          },
                          child: const Text('Forgot password'),
                        ), // This will be aligned to the right
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                print('Hello ');
                                String email = emailController.text;
                                String password = passwordController.text;
                                print("$email $password");

                                if (email.isNotEmpty && password.isNotEmpty) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DashboardPage(),
                                      ));
                                } else {
                                  print("Field cannot be empty");
                                }
                              },
                              child: const Text('Sign In'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {},
                              child: const Text('Login with Google'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Center(
                      child: RichText(
                        text: const TextSpan(
                          text: 'Don\'t have an account? ',
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                                text: 'Sign up',
                                style: TextStyle(color: Colors.blue)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
