import 'package:ecommerceapp/providers/cart_provider.dart';
import 'package:ecommerceapp/screens/home.dart';
import 'package:ecommerceapp/screens/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'My Store',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        initialRoute: Home.routeName,
        routes:{
          Home.routeName: (context)=>const Home(),
          Shop.routeName: (context)=>const Shop(),
        }
      ),
    );
  }
}
