import 'package:flutter/material.dart';
import 'package:xii_rpl_1/list_widget/detail_screen.dart';
import 'package:xii_rpl_1/main_layout.dart';

class ArticleListScreen extends StatelessWidget {
  ArticleListScreen({super.key});

  final List<Map<String, String>> articles = const [
    {
      'title': 'Flutter Dasar',
      'description': 'Belajar fundamental Flutter',
      'image': 'https://picsum.photos/200/300?1',
    },
    {
      'title': 'State Management',
      'description': 'GetX, Provider, Bloc, Riverpod',
      'image': 'https://picsum.photos/200/300?2',
    },
    {
      'title': 'Belajar Laravel',
      'description': 'Routing, Controller, SQL Injector',
      'image': 'https://picsum.photos/200/300?3',
    },
    {
      'title': 'Cyber Security',
      'description': 'Bagaimana cara supaya website dapat aman dari hacker.',
      'image': 'https://picsum.photos/200/300?4',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Article',
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DetailScreen(data: article)),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 6),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(article['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            article['title']!,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            article['description']!,
                            style: const TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
