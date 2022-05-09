import 'package:flutter/material.dart';
import 'package:project_shop/components/app_drawer.dart';
import 'package:project_shop/components/product_item.dart';
import 'package:project_shop/models/product_list.dart';
import 'package:project_shop/utils/app_routes.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductList products = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Teste'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.productForm);
            },
            icon: const Icon(Icons.add_rounded),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: products.itemsCount,
            itemBuilder: (ctx, index) => Column(
                  children: [
                    ProductItem(product: products.items[index]),
                    const Divider(),
                  ],
                )),
      ),
      drawer: const AppDrawer(),
    );
  }
}