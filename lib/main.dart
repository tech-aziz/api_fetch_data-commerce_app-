import 'package:ecommerce_api_test/AllBuinding/product_buinding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ProductBuinding(),
      debugShowCheckedModeBanner: false,
      title: 'Api Test',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: ProductPage(),
    );
  }
}
