import 'package:flutter/material.dart';
import '../../main_layout.dart';
import 'list.dart';

class EventCategoriesPage extends StatelessWidget {
  const EventCategoriesPage({super.key});

  final List<Map<String, dynamic>> categories = const [
    {
      'title': 'Wedding Events',
      'icon': Icons.favorite,
      'color': Colors.pink,
      'description': 'Beautiful wedding ceremonies and receptions',
    },
    {
      'title': 'Sports Week Events',
      'icon': Icons.sports_soccer,
      'color': Colors.green,
      'description': 'Athletic competitions and sports tournaments',
    },
    {
      'title': 'Health Events',
      'icon': Icons.local_hospital,
      'color': Colors.red,
      'description': 'Health awareness and medical conferences',
    },
    {
      'title': 'Music Concerts',
      'icon': Icons.music_note,
      'color': Colors.purple,
      'description': 'Live music performances and concerts',
    },
    {
      'title': 'Corporate Seminars',
      'icon': Icons.business,
      'color': Colors.blue,
      'description': 'Professional business seminars and workshops',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Event Categories',
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 80, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Choose Event Category',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Select the type of event you want to organize',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1,
                children: categories.map((category) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EventListPage(
                            category: category['title'],
                            categoryData: category,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: category['color'].withOpacity(0.1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              category['icon'],
                              size: 30,
                              color: category['color'],
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            category['title'],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              category['description'],
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
