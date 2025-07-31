import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final String title;
  final Widget body;

  const MainLayout({Key? key, required this.title, required this.body})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          leading: Navigator.canPop(context)
              ? IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black87),
                  onPressed: () => Navigator.pop(context),
                )
              : null,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black87,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Container(child: body),
      backgroundColor: const Color(0xFFF9F9F9),
    );
  }
}
