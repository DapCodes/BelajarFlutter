import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class StackDua extends StatelessWidget {
  const StackDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: 200, height: 200, color: Colors.amber),
        Positioned(top: 10, left: 10, child: Icon(Icons.star)),
        Positioned(top: 10, left: 160, child: Icon(Icons.star)),
        Positioned(top: 87.25, left: 87.25, child: Icon(Icons.star)),
        Positioned(top: 160, left: 160, child: Icon(Icons.star)),
        Positioned(top: 160, left: 10, child: Icon(Icons.star)),
      ],
    );
  }
}
