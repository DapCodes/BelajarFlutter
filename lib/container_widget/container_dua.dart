import 'package:flutter/material.dart';
import 'package:xii_rpl_1/container_widget/container_satu.dart';
import 'package:xii_rpl_1/main_layout.dart';

class ContainerDua extends StatelessWidget {
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Dua',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.deepPurple,
              Colors.deepPurpleAccent,
              Colors.deepPurpleAccent,
              Colors.purpleAccent,
            ],
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerSatu()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
            ),
            child: Text(
              'Pindah ke Halaman 1',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
