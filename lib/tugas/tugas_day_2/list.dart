import 'package:flutter/material.dart';
import '../../main_layout.dart';
import 'detail.dart';

class EventListPage extends StatelessWidget {
  final String category;
  final Map<String, dynamic> categoryData;

  const EventListPage({
    Key? key,
    required this.category,
    required this.categoryData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final events = _getEventsForCategory(category);

    return MainLayout(
      title: category,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 80, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: categoryData['color'].withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    categoryData['icon'],
                    size: 20,
                    color: categoryData['color'],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        '${events.length} events available',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final event = events[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EventDetailPage(
                            event: event,
                            categoryData: categoryData,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.06),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: categoryData['color'].withOpacity(0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                categoryData['icon'],
                                color: categoryData['color'],
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    event['title'],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    event['description'],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    event['price'],
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: categoryData['color'],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _getEventsForCategory(String category) {
    switch (category) {
      case 'Wedding Events':
        return [
          {
            'title': 'Elegant Garden Wedding',
            'description':
                'Beautiful outdoor wedding ceremony with floral decorations and romantic ambiance',
            'price': 'IDR 25,000,000',
            'fullDescription':
                'Create your dream wedding in a stunning garden setting. Our elegant garden wedding package includes venue decoration, floral arrangements, professional photography, catering for 100 guests, and a dedicated wedding coordinator to ensure your special day is perfect.',
            'duration': '8 hours',
            'capacity': '100 guests',
          },
          {
            'title': 'Luxury Ballroom Reception',
            'description':
                'Grand ballroom setting with premium decorations and full-service catering',
            'price': 'IDR 45,000,000',
            'fullDescription':
                'Experience luxury at its finest with our premium ballroom reception. Features include crystal chandeliers, silk drapery, gourmet dining, live entertainment, and VIP service for up to 200 guests.',
            'duration': '10 hours',
            'capacity': '200 guests',
          },
          {
            'title': 'Beach Wedding Ceremony',
            'description':
                'Romantic beachside wedding with ocean views and sunset photography',
            'price': 'IDR 18,000,000',
            'fullDescription':
                'Say "I do" with your toes in the sand and the ocean as your backdrop. Our beach wedding package includes seaside ceremony setup, tropical flowers, sunset photography session, and reception for 80 guests.',
            'duration': '6 hours',
            'capacity': '80 guests',
          },
        ];
      case 'Sports Week Events':
        return [
          {
            'title': 'Olympic-style School Competition',
            'description':
                'Multi-sport tournament with professional timing and medal ceremonies',
            'price': 'IDR 7,000,000',
            'fullDescription':
                'Organize an exciting Olympic-style competition featuring track and field events, swimming, basketball, and soccer. Includes professional timing equipment, medals, certificates, and opening/closing ceremonies.',
            'duration': '3 days',
            'capacity': '500 participants',
          },
          {
            'title': 'Corporate Sports Day',
            'description':
                'Team building sports activities for companies and organizations',
            'price': 'IDR 12,000,000',
            'fullDescription':
                'Boost team morale with our corporate sports day featuring relay races, tug-of-war, volleyball, and fun team challenges. Includes equipment, refreshments, prizes, and professional event coordination.',
            'duration': '1 day',
            'capacity': '200 employees',
          },
          {
            'title': 'Marathon & Fun Run',
            'description':
                'Professional marathon event with timing chips and participant medals',
            'price': 'IDR 15,000,000',
            'fullDescription':
                'Host a professional marathon event with certified course measurement, electronic timing, water stations, medical support, finisher medals, and post-race celebration.',
            'duration': '1 day',
            'capacity': '1000 runners',
          },
        ];
      case 'Health Events':
        return [
          {
            'title': 'Health & Wellness Expo',
            'description':
                'Comprehensive health screening and wellness education event',
            'price': 'IDR 8,500,000',
            'fullDescription':
                'Promote community health with our wellness expo featuring free health screenings, nutrition consultations, fitness demonstrations, and educational seminars by medical professionals.',
            'duration': '2 days',
            'capacity': '300 visitors',
          },
          {
            'title': 'Medical Conference',
            'description':
                'Professional medical symposium with expert speakers and workshops',
            'price': 'IDR 20,000,000',
            'fullDescription':
                'Gather medical professionals for a comprehensive conference featuring keynote speakers, breakout sessions, medical equipment exhibitions, and continuing education credits.',
            'duration': '2 days',
            'capacity': '150 professionals',
          },
          {
            'title': 'Mental Health Seminar',
            'description':
                'Mental health awareness workshop with counseling and support resources',
            'price': 'IDR 5,000,000',
            'fullDescription':
                'Raise awareness about mental health with expert-led seminars, group therapy sessions, stress management workshops, and resource distribution for ongoing support.',
            'duration': '1 day',
            'capacity': '100 participants',
          },
        ];
      case 'Music Concerts':
        return [
          {
            'title': 'Jazz Under the Stars',
            'description':
                'Intimate outdoor jazz concert with professional sound system',
            'price': 'IDR 15,000,000',
            'fullDescription':
                'Enjoy an evening of smooth jazz under the stars with professional musicians, premium sound system, ambient lighting, and VIP seating options with dinner service.',
            'duration': '4 hours',
            'capacity': '200 audience',
          },
          {
            'title': 'Rock Festival',
            'description':
                'High-energy rock concert with multiple bands and full stage production',
            'price': 'IDR 35,000,000',
            'fullDescription':
                'Experience an electrifying rock festival featuring multiple bands, professional stage lighting, concert-grade sound system, security, and food vendors.',
            'duration': '8 hours',
            'capacity': '1000 audience',
          },
          {
            'title': 'Classical Music Gala',
            'description':
                'Elegant classical music performance in a sophisticated venue',
            'price': 'IDR 22,000,000',
            'fullDescription':
                'Immerse yourself in classical music with a full orchestra performance, elegant venue decoration, formal dining, and program booklets for a refined cultural experience.',
            'duration': '3 hours',
            'capacity': '300 audience',
          },
        ];
      case 'Corporate Seminars':
        return [
          {
            'title': 'Leadership Development Workshop',
            'description':
                'Executive leadership training with interactive sessions and case studies',
            'price': 'IDR 12,000,000',
            'fullDescription':
                'Develop leadership skills through interactive workshops, case study analysis, team exercises, and one-on-one coaching sessions with industry experts.',
            'duration': '2 days',
            'capacity': '50 executives',
          },
          {
            'title': 'Digital Marketing Seminar',
            'description':
                'Latest digital marketing strategies and tools for business growth',
            'price': 'IDR 8,000,000',
            'fullDescription':
                'Learn cutting-edge digital marketing techniques including social media strategy, SEO, content marketing, and analytics with hands-on workshops and tool demonstrations.',
            'duration': '1 day',
            'capacity': '80 participants',
          },
          {
            'title': 'Innovation & Technology Summit',
            'description':
                'Tech innovation showcase with startup pitches and networking',
            'price': 'IDR 18,000,000',
            'fullDescription':
                'Explore the future of technology with startup pitches, innovation showcases, keynote presentations from tech leaders, and extensive networking opportunities.',
            'duration': '2 days',
            'capacity': '200 professionals',
          },
        ];
      default:
        return [];
    }
  }
}
