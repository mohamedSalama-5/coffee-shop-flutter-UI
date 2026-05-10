import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int selectedCategory = 0;
  String search = "";

  List<String> categories = [
    "Hot Coffee",
    "Cold Coffee",
    "Desserts",
    "Special",
    "Offers",
  ];

  List<Map<String, dynamic>> coffeeList = [


    {"name": "Cappuccino", "type": "Hot Coffee", "price": "120 EGP", "image": "https://images.unsplash.com/photo-1509042239860-f550ce710b93"},
    {"name": "Latte", "type": "Hot Coffee", "price": "140 EGP", "image": "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085"},
    {"name": "Espresso", "type": "Hot Coffee", "price": "95 EGP", "image": "https://images.unsplash.com/photo-1511920170033-f8396924c348"},
    {"name": "Americano", "type": "Hot Coffee", "price": "110 EGP", "image": "https://images.unsplash.com/photo-1521302080334-4bebac2763a6"},
    {"name": "Mocha", "type": "Hot Coffee", "price": "150 EGP", "image": "https://images.unsplash.com/photo-1509042239860-f550ce710b93"},
    {"name": "Flat White", "type": "Hot Coffee", "price": "130 EGP", "image": "https://images.unsplash.com/photo-1517701604599-bb29b565090c"},
    {"name": "Turkish Coffee", "type": "Hot Coffee", "price": "100 EGP", "image": "https://images.unsplash.com/photo-1511920170033-f8396924c348"},


    {"name": "Iced Coffee", "type": "Cold Coffee", "price": "135 EGP", "image": "https://images.unsplash.com/photo-1517701604599-bb29b565090c"},
    {"name": "Cold Brew", "type": "Cold Coffee", "price": "150 EGP", "image": "https://images.unsplash.com/photo-1461023058943-07fcbe16d735"},
    {"name": "Frappuccino", "type": "Cold Coffee", "price": "160 EGP", "image": "https://images.unsplash.com/photo-1509042239860-f550ce710b93"},
    {"name": "Iced Latte", "type": "Cold Coffee", "price": "145 EGP", "image": "https://images.unsplash.com/photo-1517701604599-bb29b565090c"},
    {"name": "Iced Mocha", "type": "Cold Coffee", "price": "155 EGP", "image": "https://images.unsplash.com/photo-1461023058943-07fcbe16d735"},
    {"name": "Cold Cappuccino", "type": "Cold Coffee", "price": "140 EGP", "image": "https://images.unsplash.com/photo-1517701604599-bb29b565090c"},
    {"name": "Ice Vanilla", "type": "Cold Coffee", "price": "145 EGP", "image": "https://images.unsplash.com/photo-1517701604599-bb29b565090c"},


    {"name": "Cake", "type": "Desserts", "price": "80 EGP", "image": "https://images.unsplash.com/photo-1519869325930-281384150729"},
    {"name": "Donut", "type": "Desserts", "price": "50 EGP", "image": "https://images.unsplash.com/photo-1509440159596-0249088772ff"},
    {"name": "Brownie", "type": "Desserts", "price": "70 EGP", "image": "https://images.unsplash.com/photo-1601979031925-424e53b6caaa"},
    {"name": "Cheesecake", "type": "Desserts", "price": "90 EGP", "image": "https://images.unsplash.com/photo-1508739773434-c26b3d09e071"},
    {"name": "Cupcake", "type": "Desserts", "price": "60 EGP", "image": "https://images.unsplash.com/photo-1587668178277-295251f900ce"},
    {"name": "Croissant", "type": "Desserts", "price": "40 EGP", "image": "https://images.unsplash.com/photo-1555507036-ab1f4038808a"},
    {"name": "Waffle", "type": "Desserts", "price": "85 EGP", "image": "https://images.unsplash.com/photo-1505253213348-cd54c92b37f1"},

    {"name": "Caramel Macchiato", "type": "Special", "price": "170 EGP", "image": "https://images.unsplash.com/photo-1461023058943-07fcbe16d735"},
    {"name": "Vanilla Coffee", "type": "Special", "price": "155 EGP", "image": "https://images.unsplash.com/photo-1509042239860-f550ce710b93"},
    {"name": "Hazelnut Coffee", "type": "Special", "price": "160 EGP", "image": "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085"},
    {"name": "Irish Coffee", "type": "Special", "price": "190 EGP", "image": "https://images.unsplash.com/photo-1509042239860-f550ce710b93"},
    {"name": "Signature Blend", "type": "Special", "price": "180 EGP", "image": "https://images.unsplash.com/photo-1517701604599-bb29b565090c"},
    {"name": "Special Mocha", "type": "Special", "price": "175 EGP", "image": "https://images.unsplash.com/photo-1523942839745-7848d9c7f7dd"},
    {"name": "Coconut Coffee", "type": "Special", "price": "165 EGP", "image": "https://images.unsplash.com/photo-1509042239860-f550ce710b93"},


    {"name": "Buy 1 Get 1", "type": "Offers", "price": "Deal", "image": "https://images.unsplash.com/photo-1511920170033-f8396924c348"},
    {"name": "50% Off Coffee", "type": "Offers", "price": "Discount", "image": "https://images.unsplash.com/photo-1509042239860-f550ce710b93"},
    {"name": "Free Dessert", "type": "Offers", "price": "Bonus", "image": "https://images.unsplash.com/photo-1519869325930-281384150729"},
    {"name": "Combo Meal", "type": "Offers", "price": "120 EGP", "image": "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085"},
    {"name": "Morning Deal", "type": "Offers", "price": "100 EGP", "image": "https://images.unsplash.com/photo-1517701604599-bb29b565090c"},
    {"name": "Student Offer", "type": "Offers", "price": "80 EGP", "image": "https://images.unsplash.com/photo-1461023058943-07fcbe16d735"},
    {"name": "Happy Hour", "type": "Offers", "price": "70 EGP", "image": "https://images.unsplash.com/photo-1509440159596-0249088772ff"},
  ];

  @override
  Widget build(BuildContext context) {
    String selectedType = categories[selectedCategory];

    List filtered = coffeeList.where((item) {
      return item["type"] == selectedType &&
          item["name"].toLowerCase().contains(search.toLowerCase());
    }).toList();

    return Scaffold(
      backgroundColor: const Color(0xffF5E6D3),
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text("Coffee Menu"),

          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),


      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    search = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Search coffee...",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      decoration: BoxDecoration(
                        color: selectedCategory == index
                            ? Colors.brown
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text(categories[index])),
                    ),
                  );
                },
              ),
            ),

            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: filtered.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            filtered[index]["image"],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(filtered[index]["name"]),
                        Text(filtered[index]["price"]),
                      ],
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
}