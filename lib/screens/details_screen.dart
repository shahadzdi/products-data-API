import 'package:flutter/material.dart';
import 'package:hw/models/products_model.dart';

class DetailsScreen extends StatelessWidget {
  final ProductsModel model;
  const DetailsScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        shadowColor: Colors.grey,
        title: Text(
          'Details',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.pink.shade50,
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 12)],
              ),
              child: Image.network(
                model.thumbnail ??
                    "https://t4.ftcdn.net/jpg/16/79/44/21/360_F_1679442196_OEsi0AFKie6hYMBpvmXwwRgRYGV4U6Lz.jpg",
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.only(top: 12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 12)],
              ),
              child: Column(
                children: [
                  Text("title: ${model.titel ?? "no title"}"),
                  Text("description: ${model.description ?? "no description"}"),
                  Text("category: ${model.category ?? "no category"} "),
                  Text("rating: ${model.rating ?? "no rating"}"),
                  Text("price: ${model.price ?? "no price"}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
