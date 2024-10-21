import 'package:flutter/material.dart';

class ItemDetailScreen extends StatelessWidget {
  final Map<String, dynamic> item;

  ItemDetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(item['image']),
            SizedBox(height: 20),
            Text(
              item['name'],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "${item['price']}đ",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Rating: ${item['rating']} ⭐"),
                Text("${item['likes']} likes"),
              ],
            ),
            SizedBox(height: 20),
            Text("Distance: 7.7 km"),
            Text("Delivery: 30 minutes"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Them vao gio hang
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}