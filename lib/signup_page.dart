import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _formData = {
    'name': '',
    'phone': '',
    'age': '',
    'email': '',
    'guardianName': '',
    'guardianPhone': '',
    'guardianEmail': '',
    'password': '',
    'confirmPassword': '',
  };

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (_formData['password'] != _formData['confirmPassword']) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Passwords do not match!')),
        );
        return;
      }
      // Save formData to local storage or send to backend
      print('Signup Data: $_formData');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Signup successful!')),
      );
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup for Safety'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                'assets/image.jpg', // Add a women safety-themed image
                height: 150,
              ),
              SizedBox(height: 20),
              _buildTextField('Name', Icons.person, 'name'),
              _buildTextField('Phone Number', Icons.phone, 'phone'),
              _buildTextField('Age', Icons.calendar_today, 'age'),
              _buildTextField('Email', Icons.email, 'email'),
              _buildTextField(
                  'Guardian Name', Icons.person_outline, 'guardianName'),
              _buildTextField(
                  'Guardian Phone', Icons.phone_android, 'guardianPhone'),
              _buildTextField(
                  'Guardian Email', Icons.email_outlined, 'guardianEmail'),
              _buildTextField('Password', Icons.lock, 'password',
                  isPassword: true),
              _buildTextField(
                  'Confirm Password', Icons.lock_outline, 'confirmPassword',
                  isPassword: true),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Signup', style: TextStyle(fontSize: 16)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/login'),
                child: Text('Already have an account? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, IconData icon, String field,
      {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: Theme.of(context).primaryColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        obscureText: isPassword,
        onSaved: (value) => _formData[field] = value!,
        validator: (value) => value!.isEmpty ? '$label is required' : null,
      ),
    );
  }
}
