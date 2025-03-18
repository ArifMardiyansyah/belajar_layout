import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ManageWidget(),
    );
  }
}

class ManageWidget extends StatefulWidget {
  @override
  _ManageWidgetState createState() => _ManageWidgetState();
}

class _ManageWidgetState extends State<ManageWidget> {
  bool _isVisible = true;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Manage Widget')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isVisible) 
              Container(
                width: 250,
                height: 100,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(top: 50, bottom: 20, left: 30, right: 30),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Box Model",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleVisibility,
              child: Text(_isVisible ? 'Hide' : 'Show'),
            ),
          ],
        ),
      ),
    );
  }
}