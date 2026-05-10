import 'package:flutter/material.dart';

class CafeProfilePage extends StatelessWidget {
    const CafeProfilePage({super.key});


    final Color backgroundBeige = const Color(0xFFF7F1E1);
    final Color cardWhite = const Color(0xFFFFFFFF);
    final Color accentBrown = const Color(0xFF8D6E63);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: backgroundBeige,
            body: CustomScrollView(
                slivers: [
                    SliverAppBar(
                        expandedHeight: 250.0,
                        pinned: true,
                        backgroundColor: accentBrown,
                        leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                                backgroundColor: Colors.white.withOpacity(0.7),
                                child: IconButton(
                                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                                    onPressed: () {
                                        Navigator.of(context).pop();
                                    },
                                ),
                            ),
                        ),
                        flexibleSpace: FlexibleSpaceBar(
                            title: const Text(
                                'Hanover Café',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    shadows: [Shadow(blurRadius: 10, color: Colors.black)],
                                ),
                            ),
                            background: Image.network(
                                'https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&q=80',
                                fit: BoxFit.cover,
                            ),
                        ),
                    ),

                    SliverList(
                        delegate: SliverChildListDelegate([
                            Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        _buildSectionTitle('About Our Café'),
                                        _buildInfoCard([
                                            const Text(
                                                'Enjoy the best hand-crafted coffee in a cozy and quiet atmosphere. We use premium beans and offer a variety of desserts.',
                                                style: TextStyle(fontSize: 15, color: Colors.black87, height: 1.5),
                                            ),
                                        ]),

                                        const SizedBox(height: 20),

                                        _buildSectionTitle('Contact Details'),
                                        _buildInfoCard([
                                            _buildPointItem(Icons.location_on, 'Location: Cairo, Egypt'),
                                            _buildPointItem(Icons.phone, 'Phone: +20 123 456 789'),
                                            _buildPointItem(Icons.email, 'Email: hello@coffee.com'),
                                            _buildPointItem(Icons.language, 'Website: www.coffeeshop.com'),
                                        ]),

                                        const SizedBox(height: 20),

                                        _buildSectionTitle('Our Features'),
                                        _buildInfoCard([
                                            _buildPointItem(Icons.wifi, 'Free High-Speed Wi-Fi'),
                                            _buildPointItem(Icons.laptop, 'Study & Work Zones'),
                                            _buildPointItem(Icons.music_note, 'Soft Background Music'),
                                            _buildPointItem(Icons.ac_unit, 'Full Air Conditioning'),
                                            _buildPointItem(Icons.credit_card, 'Visa/MasterCard Accepted'),
                                        ]),

                                        const SizedBox(height: 20),

                                        _buildSectionTitle('Opening Hours'),
                                        _buildInfoCard([
                                            _buildPointItem(Icons.access_time, 'Weekdays: 8:00 AM - 12:00 AM'),
                                            _buildPointItem(Icons.access_time_filled, 'Weekends: 10:00 AM - 2:00 AM'),
                                        ]),

                                        const SizedBox(height: 30),

                                        SizedBox(
                                            width: double.infinity,
                                            height: 55,
                                            child: ElevatedButton.icon(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: accentBrown,
                                                    foregroundColor: Colors.white,
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                                    elevation: 5,
                                                ),
                                                onPressed: () {
                                                    Navigator.of(context).pop();
                                                },
                                                icon: const Icon(Icons.home_filled),
                                                label: const Text(
                                                    'Back to Home Screen',
                                                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                                                ),
                                            ),
                                        ),
                                        const SizedBox(height: 40),
                                    ],
                                ),
                            ),
                        ]),
                    ),
                ],
            ),
        );
    }

    Widget _buildSectionTitle(String title) {
        return Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Text(
                title,
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: accentBrown.withOpacity(0.9),
                ),
            ),
        );
    }

    Widget _buildInfoCard(List<Widget> children) {
        return Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: cardWhite,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                    ),
                ],
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
            ),
        );
    }

    Widget _buildPointItem(IconData icon, String text) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
                children: [
                    Icon(icon, size: 22, color: accentBrown),
                    const SizedBox(width: 15),
                    Expanded(
                        child: Text(
                            text,
                            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                    ),
                ],
            ),
        );
    }
}