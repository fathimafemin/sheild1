import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login for Safety'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                  context,
                  '/login-form',
                  arguments: 'user', // Pass 'user' as the login type
                ),
                child: Text('Login as User'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                  context,
                  '/login-form',
                  arguments: 'guardian', // Pass 'guardian' as the login type
                ),
                child: Text('Login as Guardian'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/signup'),
                child: Text('Create New Account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
