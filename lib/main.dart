import 'package:flutter/material.dart';
import 'package:project_shop/models/pages/product_detail_page.dart';
import 'package:project_shop/models/pages/products_overview_page.dart';
import 'package:project_shop/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.purple,
              secondary: Colors.deepOrange,
            ),
        textTheme: ThemeData().textTheme.copyWith(
              bodyText1: const TextStyle(
                fontFamily: 'Lato',
              ),
            ),
      ),
      home: ProductsOverviewPage(),
      routes: {
        AppRoutes.productDetail: (context) => const ProductDetailPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
