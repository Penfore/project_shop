import 'package:flutter/material.dart';
import 'package:project_shop/components/product_grid.dart';

class ProductsOverviewPage extends StatelessWidget {
  const ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Minha loja',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: const ProductGrid(),
    );
  }
}
