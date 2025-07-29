import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Satu',
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        color: Colors.blue,
        width: 200,
        height: 200,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Text(
                  'HI EVERYONE',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
