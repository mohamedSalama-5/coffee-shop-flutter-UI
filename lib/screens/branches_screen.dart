import 'package:flutter/material.dart';

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BranchesScreen(),
    );
  }
}

class BranchesScreen extends StatelessWidget {
  const BranchesScreen({super.key});

  static const List branches = [
    {
      "name": "Downtown Branch",
      "address": "Cairo Street, Alexandria",
      "phone": "+20 100 222 3333",
      "image":
          "https://images.unsplash.com/photo-1554118811-1e0d58224f24",
    },
    {
      "name": "Sea View Branch",
      "address": "Beach Road, Alexandria",
      "phone": "+20 101 555 7777",
      "image":
          "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085",
    },
    {
      "name": "Mall Branch",
      "address": "Mall of Egypt, Giza",
      "phone": "+20 109 888 9999",
      "image":
          "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5E6D3),
      appBar: AppBar(
        backgroundColor: const Color(0xffD2B48C),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Coffee Branches ☕",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: branches.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.brown.withOpacity(0.2),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.network(
                    branches[index]['image'],
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        branches[index]['name'],
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.brown,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              branches[index]['address'],
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            color: Colors.brown,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            branches[index]['phone'],
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffD2B48C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "View Branch",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}