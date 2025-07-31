import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class GridSatu extends StatelessWidget {
  const GridSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Grid Satu',
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Container(color: Colors.blue, width: 200, child: Text('satu')),
          Container(color: Colors.red, width: 200, child: Text('dua')),
          Container(color: Colors.green, width: 200, child: Text('tiga')),
          Container(color: Colors.yellow, width: 200, child: Text('empa')),
        ],
      ),
    );
  }
}
