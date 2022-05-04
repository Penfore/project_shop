import 'package:flutter/material.dart';
import 'package:project_shop/models/cart.dart';
import 'package:project_shop/models/oder_list.dart';
import 'package:project_shop/models/product_list.dart';
import 'package:project_shop/pages/cart_page.dart';
import 'package:project_shop/pages/product_detail_page.dart';
import 'package:project_shop/pages/products_overview_page.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductList>(
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider<Cart>(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider<OrderList>(
          create: (_) => OrderList(),
        )
      ],
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
                  color: Colors.white,
                ),
                headline6: const TextStyle(
                  fontFamily: 'Lato',
                  color: Colors.white,
                ),
              ),
        ),
        home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.productDetail: (context) => const ProductDetailPage(),
          AppRoutes.cart: (context) => const CartPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
