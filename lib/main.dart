import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  bool _isPositionedRight = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Position'),
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(seconds:5),
              curve: Curves.easeInOut,
              left: _isPositionedRight ? 800.0 : 0.0,
              child: Container(
                width: 150.0,
                height: 150.0,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Center(
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _isPositionedRight = !_isPositionedRight;
            });
          },
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}