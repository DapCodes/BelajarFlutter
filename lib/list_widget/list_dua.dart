import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class ListDua extends StatelessWidget {
  ListDua({super.key});

  final List<Map<String, dynamic>> listData = [
    {'color': Colors.red, 'partai': 'Partai Banteng'},
    {'color': Colors.blue, 'partai': 'Partai Joged'},
    {'color': Colors.pink, 'partai': 'Partai Solid'},
    {'color': Colors.black38, 'partai': 'Partai Roblox'},
    {'color': Colors.greenAccent, 'partai': 'Partai Jawa'},
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List Builder',
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, i) {
          final data = listData[i];
          return Container(
            margin: EdgeInsets.all(100),
            color: data['color'],
            width: 200,
            height: 200,
            child: Center(child: Text(data['partai'])),
          );
        },
      ),
    );
  }
}
