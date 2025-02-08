import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _situationController = TextEditingController();

  void _handleAlert() {
    if (_situationController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please describe your situation!')),
      );
      return;
    }
    // Add logic to send the situation to the backend or trigger an alert
    print('Alert sent! Situation: ${_situationController.text}');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text('Alert sent! Situation: ${_situationController.text}')),
    );
    // Reset the text box
    _situationController.clear();
  }

  void _handleLogout() {
    // Add logout logic (e.g., clear session/token)
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Assistance'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _handleLogout,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Describe your situation:',
              style: TextStyle(
                fontSize: 24,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _situationController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Describe your situation...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _handleAlert,
              child: Text('Send Alert'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
