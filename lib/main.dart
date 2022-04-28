import 'package:flutter/material.dart';
import 'package:project_shop/models/pages/product_detail_page.dart';
import 'package:project_shop/models/pages/products_overview_page.dart';
import 'package:project_shop/models/product_list.dart';
import 'package:project_shop/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductList>(
      create: (_) => ProductList(),
      child: MaterialApp(
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
        home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.productDetail: (context) => const ProductDetailPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
