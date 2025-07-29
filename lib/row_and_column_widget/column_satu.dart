import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Column Satu',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Column Satu'),
          Text('Column Dua'),
          Text('Column Tiga'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text('Row Satu'), Text('Row Dua'), Text('Row Tiga')],
          ),
        ],
      ),
    );
  }
}
