import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Counter App',
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Counter App'),
      ),
      body: Center(
        child: Container(
          width: screenSize.width * 0.8, 
          height: screenSize.height * 0.5, 
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter Value:',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 20),
              Text(
                '$_counter',
                style: TextStyle(color: Colors.white, fontSize: 48),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    child: const Text('Increment'),
                  ),
                  ElevatedButton(
                    onPressed: _decrementCounter,
                    child: const Text('Decrement'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}