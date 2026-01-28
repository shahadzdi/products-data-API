import 'package:flutter/material.dart';
import 'package:hw/screens/details_screen.dart';
import 'package:hw/service/api.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        shadowColor: Colors.grey,
        title: Text(
          'Products',
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
        child: FutureBuilder(
          future: Api().getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              ); // تظهر علامة تحميل
            }
            return GridView.builder(
              clipBehavior: Clip.none,
              itemCount: snapshot.data?.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsScreen(model: snapshot.data![index]);
                        },
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 12),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          snapshot.data?[index].thumbnail ??
                              "https://t4.ftcdn.net/jpg/16/79/44/21/360_F_1679442196_OEsi0AFKie6hYMBpvmXwwRgRYGV4U6Lz.jpg",
                          fit: BoxFit.cover,
                        ),
                        Text(
                          snapshot.data?[index].titel ?? "no title",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
