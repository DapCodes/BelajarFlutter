import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';
import 'package:xii_rpl_1/stack_widget/stack_dua.dart';
import 'package:xii_rpl_1/stack_widget/stack_satu.dart';
import 'package:xii_rpl_1/stack_widget/stack_tiga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: StackTiga());
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Flutter',
      body: Center(
        child: Text(
          'Hello FLutter',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
