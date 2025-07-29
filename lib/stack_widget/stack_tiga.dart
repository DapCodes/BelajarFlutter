import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class StackTiga extends StatelessWidget {
  const StackTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Stack dan Foto',
      body: Stack(
        children: [
          Image.network(
            'https://tr.rbxcdn.com/180DAY-022b97c370bec7a6ad98d7fe5d5af228/420/420/Hat/Png/noFilter',
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text('Foto ganteng sopan dan IDAMAN'),
          ),
        ],
      ),
    );
  }
}
