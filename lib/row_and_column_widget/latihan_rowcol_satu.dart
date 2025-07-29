import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class LatihanRowcolSatu extends StatelessWidget {
  const LatihanRowcolSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan RowCol Satu',
      body: Center(
        child: Container(
          height: 60,
          width: double.infinity,
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.call, size: 32), Text('Call')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.navigation, size: 32), Text('Route')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.share, size: 32), Text('Share')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
