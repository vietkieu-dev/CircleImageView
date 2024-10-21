import 'package:flutter/material.dart';
import 'item_detail_screen.dart';

class ItemListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      "name": "Bánh mì - Ếch Singapore 1 con",
      "price": 85000,
      "image": "assets/banhmi.png",
      "rating": "4.5",
      "likes": "258",
    },
    {
      "name": "Bánh mì - Ếch Singapore 1 con",
      "price": 85000,
      "image": "assets/banhmi.png",
      "rating": "4.5",
      "likes": "258",
    },
    {
      "name": "Bánh mì - Ếch Singapore 1 con",
      "price": 85000,
      "image": "assets/banhmi.png",
      "rating": "4.5",
      "likes": "258",
    },
    {
      "name": "Bánh mì - Ếch Singapore 1 con",
      "price": 85000,
      "image": "assets/banhmi.png",
      "rating": "4.5",
      "likes": "258",
    },
    {
      "name": "Bánh mì - Ếch Singapore 1 con",
      "price": 85000,
      "image": "assets/banhmi.png",
      "rating": "4.5",
      "likes": "258",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flash Sale'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: Image.asset(item['image']),
            title: Text(item['name'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            subtitle: Text("${item['price']}đ",
              style: TextStyle(fontSize: 14, color: Colors.red),),
            trailing: Text("${item['rating']} ⭐ | ${item['likes']} likes"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetailScreen(item: item),
                ),
              );
            },
          );
        },
      ),
    );
  }
}