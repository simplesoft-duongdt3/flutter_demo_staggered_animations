import 'package:demo_animations/demo.dart';
import 'package:flutter/material.dart';

import 'basic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainDemoPage(),
    );
  }
}

class MainDemoPage extends StatelessWidget {
  const MainDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const BasicStaggerDemo();
                }));
              },
              child: const Text("Basic"),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return const ImagesDemo();
                  }));
                },
                child: const Text(
                  "Images demo",
                )),
          ],
        ),
      ),
    );
  }
}
