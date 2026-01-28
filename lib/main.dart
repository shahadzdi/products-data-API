import 'package:flutter/material.dart';
import 'package:hw/screens/products_screen.dart';

// 1- Test the API in Postman and view the response    
// 2- Create a data model  
// 3- Create a "services" folder  
// 4- In the "services" folder, create a method to call the API and return a list of models  
// 5- Fetch the data in the screen and display it

void main() async{
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductsScreen(),
    );
  }
}
