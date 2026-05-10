import 'package:flutter/material.dart';

// class GalleryScreen extends StatelessWidget {
class CoffeeGalleryApp extends StatelessWidget {
  const CoffeeGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const GalleryScreen(),
    );
  }
}

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  final Color bgColor = const Color(0xFFFEFAE0);
  final Color appBarColor = const Color(0xFFD4A373);
  final Color cardColor = const Color(0xFFFAEDCD);

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> fullGallery = [
      {'name': 'Main Hall', 'url': 'https://images.unsplash.com/photo-1554118811-1e0d58224f24?w=500'},
      {'name': 'Cozy Corner', 'url': 'https://images.unsplash.com/photo-1559925393-8be0ec41b50d?w=500'},
      {'name': 'Coffee Bar', 'url': 'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=500'},
      {'name': 'Outdoor View', 'url': 'https://images.unsplash.com/photo-1521017432531-fbd92d744264?w=500'},
      {'name': 'Hot Espresso', 'url': 'https://images.unsplash.com/photo-1510591509098-f4fdc6d0ff04?w=500'},
      {'name': 'Cappuccino Art', 'url': 'https://images.unsplash.com/photo-1534778101976-62847782c213?w=500'},
      {'name': 'Turkish Coffee', 'url': 'https://images.unsplash.com/photo-1578314675249-a6910f80cc4e?w=500'},
      {'name': 'Flat White', 'url': 'https://images.unsplash.com/photo-1570968915860-54d5c301fa9f?w=500'},
      {'name': 'Reading Area', 'url': 'https://images.unsplash.com/photo-1501339817302-ee4bade2bb19?w=500'},
      {'name': 'Brewing Station', 'url': 'https://images.unsplash.com/photo-1442512595331-e89e73853f31?w=500'},
      {'name': 'Morning Light', 'url': 'https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=500'},
      {'name': 'Table Setup', 'url': 'https://images.unsplash.com/photo-1507133750040-4a8f57021571?w=500'},
      {'name': 'Iced Latte', 'url': 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=500'},
      {'name': 'Cold Brew', 'url': 'https://images.unsplash.com/photo-1499961024600-ad094db305cc?w=500'},
      {'name': 'Frappuccino', 'url': 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=500'},
      {'name': 'Iced Americano', 'url': 'https://images.unsplash.com/photo-1551033406-611cf9a28f67?w=500'},
    ];

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text(
          'Coffee & Space Gallery',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 4,
        leading: IconButton(
          icon: const Icon(Icons.home, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.85,
        ),
        itemCount: fullGallery.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    fullGallery[index]['url']!,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          color: appBarColor,
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image, size: 50, color: Colors.grey),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Text(
                        fullGallery[index]['name']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
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