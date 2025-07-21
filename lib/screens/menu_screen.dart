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
          'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    },
    {
      'name': 'Caesar Salad',
      'price': '\$5.49',
      'image':
          'https://images.unsplash.com/photo-1589302168068-964664d93dc0?auto=format&fit=crop&w=800&q=80'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x665AC18E),
        title: Center(
          child: Text(
            'Menu        ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
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
              //const Padding(
              //padding: EdgeInsets.all(20),
              //child: Text(
              //'Menu',
              //style: TextStyle(
              //color: Colors.white,
              //fontSize: 32,
              //fontWeight: FontWeight.bold,
              //),
              //),
              //),
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
