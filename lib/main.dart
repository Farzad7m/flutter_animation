import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double weight = 200;
  double height = 200;

  void changeShape() {
    if (weight == 200) {
      setState(() {
        weight = 400;
        height = 400;
      });
    } else {
      setState(() {
        weight = 200;
        height = 200;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animation in flutter'),
        ),
        body: Column(
          children: [
            AnimatedContainer(
              curve: Curves.elasticOut,
              duration: const Duration(
                seconds: 2,
              ),
              color: Colors.red,
              width: weight,
              height: height,
              child: const Center(
                child: Text(
                  'Animation',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: changeShape,
              child: const Text(
                'Click To Animate',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
