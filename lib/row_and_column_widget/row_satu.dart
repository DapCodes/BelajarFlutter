import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class RowSatu extends StatelessWidget {
  const RowSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Row Satu',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Text Widget 1'),
          Text('Text Widget 2'),
          Text('Text Widget 3'),
          Text('Text Widget 4'),
          Text('Text Widget 5'),
        ],
      ),
    );
  }
}
