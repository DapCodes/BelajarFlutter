import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, String> data;
  const DetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: data['title']!,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.network(data['image']!, height: 200),
            const SizedBox(height: 20),
            Text(data['description']!, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
