import 'package:flutter/material.dart';
import '../colors/app_colors.dart';
import 'menu_screen.dart';
import 'branches_screen.dart';
import 'gallery_screen.dart';
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, dynamic>> popularProducts = const [
    {
      'name': 'Espresso',
      'price': '\$3.50',
      'image': 'assets/images/espresso.jpg',
      'rating': 4.8,
    },
    {
      'name': 'Latte',
      'price': '\$4.50',
      'image': 'assets/images/latte.jpg',
      'rating': 4.7,
    },
    {
      'name': 'Cappuccino',
      'price': '\$4.00',
      'image': 'assets/images/cappuccino.jpg',
      'rating': 4.9,
    },
    {
      'name': 'Mocha',
      'price': '\$5.00',
      'image': 'assets/images/mocha.jpg',
      'rating': 4.8,
    },
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cornsilk,
      body: SafeArea( // avoid the notch and camera area
        child: SingleChildScrollView( // allow vertical swiping
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding( // اضافه مسافات داخليه حلو العناصر
                padding: const EdgeInsets.symmetric(horizontal: 24.0),//مسافه من اليمين والشمال
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back ',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.lightBronze,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Coffee Lover',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.lightBronze,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.papayaWhip,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.person_outline,
                          color: AppColors.lightBronze,
                          size: 26,
                        ),
                      ),
                    ),
                  ],
                ),
              ),



              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/hero_coffee.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [
                            AppColors.lightBronze.withOpacity(0.4),
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Freshly Brewed\nDaily Specials ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),




              // most popular 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '🔥 Most Popular',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.lightBronze,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.lightBronze,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: popularProducts.length,
                  itemBuilder: (context, index) {
                    final product = popularProducts[index];
                    return Container(
                      width: 180,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: AppColors.papayaWhip,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                            child: Image.asset(
                              product['image'],
                              height: 140,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product['name'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.drySage,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    const Icon(Icons.star, size: 14, color: AppColors.lightBronze),
                                    const SizedBox(width: 4),
                                    Text(
                                      product['rating'].toString(),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.lightBronze,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      product['price'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.lightBronze,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        color: AppColors.lightBronze,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: const Icon(
                                        Icons.add_shopping_cart,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              
              //---------------------------------------------------------------
              
              
              
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  'Explore More',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.lightBronze,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.5,
                  children: [
                    _buildNavButton(
                      context: context,
                      icon: Icons.menu_book,
                      label: 'Menu',
                      color: AppColors.lightBronze,
                      screen: const MenuScreen(),
                    ),
                    _buildNavButton(
                      context: context,
                      icon: Icons.store,
                      label: 'Branches',
                      color: AppColors.lightBronze,
                      screen: const BranchesScreen(),
                    ),
                    _buildNavButton(
                      context: context,
                      icon: Icons.photo_library,
                      label: 'Gallery',
                      color: AppColors.lightBronze,
                      screen: const GalleryScreen(),
                    ),

                    _buildNavButton(
                      context: context,
                      icon: Icons.info,
                      label: 'About',
                      color: AppColors.lightBronze,
                      screen: const CafeProfilePage(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }






  Widget _buildNavButton({
    required BuildContext context,
    required IconData icon,
    required String label,
    required Color color,
    required Widget screen,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.papayaWhip,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  icon,
                  size: 28,
                  color: color,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.drySage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}