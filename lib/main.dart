import 'package:flutter/material.dart';

import 'screens/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      color: Colors.black,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePages(),
    );
  }
}
