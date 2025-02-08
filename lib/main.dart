import 'package:flutter/material.dart';
import 'signup_page.dart'; // Import the SignupPage
import 'login_page.dart'; // Import the LoginPage
import 'login_form_page.dart'; // Import the LoginFormPage
import 'home_page.dart'; // Import the HomePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Women Safety App',
      initialRoute: '/signup', // Set the initial route to the SignupPage
      routes: {
        '/signup': (context) => SignupPage(), // Route for the SignupPage
        '/login': (context) => LoginPage(), // Route for the LoginPage
        '/login-form': (context) => LoginFormPage(
              loginType: ModalRoute.of(context)!.settings.arguments as String,
            ), // Route for the LoginFormPage
        '/homepage': (context) => HomePage(), // Route for the HomePage
      },
    );
  }
}
