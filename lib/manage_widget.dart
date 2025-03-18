import 'package:flutter/material.dart';

class ManageWidget extends StatefulWidget {
  const ManageWidget({super.key});

  @override
  ManageWidgetState createState() => ManageWidgetState();
}

class ManageWidgetState extends State<ManageWidget> { 
  bool isVisible = true;

  void _toggleVisibility() {
    setState(() {
      isVisible = !isVisible; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Manage Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isVisible)
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
                child: const Center(child: Text('Visible Widget')),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleVisibility,
              child: const Text('Toggle Visibility'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: ManageWidget())); 
}