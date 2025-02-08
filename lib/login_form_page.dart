import 'package:flutter/material.dart';

class LoginFormPage extends StatelessWidget {
  final String loginType;

  LoginFormPage({required this.loginType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login as $loginType'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulate a successful login
                print('Logging in as $loginType');
                Navigator.pushReplacementNamed(
                    context, '/homepage'); // Redirect to HomePage
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/signup'),
              child: Text('Create New Account'),
            ),
          ],
        ),
      ),
    );
  }
}
