import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';
import 'tugas/tugas_day_2/grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Event Organizer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EventCategoriesPage(),
    );
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
