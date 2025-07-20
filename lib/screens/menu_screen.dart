import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  final List<Map<String, String>> foodItems = [
    {
      'name': 'Margherita Pizza',
      'price': '\$8.99',
      'image':
          'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_1280.jpg'
    },
    {
      'name': 'Cheeseburger',
      'price': '\$6.49',
      'image':
          'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg'
    },
    {
      'name': 'Pasta Alfredo',
      'price': '\$7.99',
      'image':
          'https://cdn.pixabay.com/photo/2017/07/16/10/43/pasta-2500816_1280.jpg'
    },
    {
      'name': 'Caesar Salad',
      'price': '\$5.49',
      'image':
          'https://cdn.pixabay.com/photo/2016/11/18/15/07/salad-1834641_1280.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0x665AC18E),
              Color(0x995AC18E),
              Color(0xCC5AC18E),
              Color(0xFF5AC18E),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: foodItems.length,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemBuilder: (context, index) {
                    final item = foodItems[index];
                    return Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(10),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            item['image']!,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          item['name']!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        subtitle: Text(
                          item['price']!,
                          style:
                              const TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
