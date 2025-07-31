import 'package:flutter/material.dart';
import '../../main_layout.dart';

class EventDetailPage extends StatelessWidget {
  final Map<String, dynamic> event;
  final Map<String, dynamic> categoryData;

  const EventDetailPage({
    Key? key,
    required this.event,
    required this.categoryData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Event Details',
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 80, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Card
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      categoryData['color'].withOpacity(0.8),
                      categoryData['color'],
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(categoryData['icon'], size: 40, color: Colors.white),
                      const SizedBox(height: 16),
                      Text(
                        event['title']!,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        event['price']!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Event Details
              _buildDetailSection(
                'Description',
                event['fullDescription']!,
                Icons.description,
              ),
              const SizedBox(height: 20),

              // Event Info Cards
              Row(
                children: [
                  Expanded(
                    child: _buildInfoCard(
                      'Duration',
                      event['duration']!,
                      Icons.access_time,
                      categoryData['color'],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildInfoCard(
                      'Capacity',
                      event['capacity']!,
                      Icons.people,
                      categoryData['color'],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Features Section
              _buildDetailSection(
                'What\'s Included',
                _getIncludedFeatures(),
                Icons.check_circle,
              ),
              const SizedBox(height: 32),

              // Contact Button
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    _showContactDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: categoryData['color'],
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Contact Event Organizer',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailSection(String title, String content, IconData icon) {
    return Container(
      width: double.infinity,
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
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: categoryData['color'], size: 20),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Container(
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
        child: Column(
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  String _getIncludedFeatures() {
    return '''• Professional event coordination and planning
• Venue setup and decoration
• Audio-visual equipment and technical support  
• Catering and refreshment services
• Photography and documentation
• Security and crowd management
• Insurance coverage for the event
• Post-event cleanup and breakdown
• 24/7 customer support during event''';
  }

  void _showContactDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Row(
            children: [
              Icon(Icons.contact_phone, color: categoryData['color']),
              const SizedBox(width: 8),
              const Text('Contact Information'),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildContactItem(Icons.phone, 'Phone', '+62 812-3456-7890'),
              _buildContactItem(Icons.email, 'Email', 'daffa@gmail.com'),
              _buildContactItem(
                Icons.location_on,
                'Address',
                'SMK Assalaam Bandung',
              ),
              _buildContactItem(Icons.access_time, 'Hours', 'Mon-Fri: 9AM-6PM'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Close',
                style: TextStyle(color: categoryData['color']),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Thank you! We will contact you soon.'),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: categoryData['color'],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Request Quote',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildContactItem(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.grey[600]),
          const SizedBox(width: 8),
          Text('$label: ', style: const TextStyle(fontWeight: FontWeight.w500)),
          Expanded(
            child: Text(value, style: const TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
