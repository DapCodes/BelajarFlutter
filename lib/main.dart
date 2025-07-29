import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';
import 'package:xii_rpl_1/row_and_column_widget/column_satu.dart';
import 'package:xii_rpl_1/row_and_column_widget/latihan_rowcol_dua.dart';
import 'package:xii_rpl_1/row_and_column_widget/latihan_rowcol_satu.dart';
import 'package:xii_rpl_1/row_and_column_widget/row_satu.dart';
import 'package:xii_rpl_1/tugas/tugas_day_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TugasDaySatu());
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
