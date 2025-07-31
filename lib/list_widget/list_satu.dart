import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class ListSatu extends StatelessWidget {
  const ListSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List Basic',
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/200'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          );
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
