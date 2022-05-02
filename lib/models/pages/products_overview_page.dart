import 'package:flutter/material.dart';
import 'package:project_shop/components/product_grid.dart';

enum FilterOptions {
  favorite,
  all,
}

class ProductsOverviewPage extends StatefulWidget {
  const ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {
  bool _showFavoriteOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Minha loja',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert_rounded),
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text('Somente favoritos'),
                value: FilterOptions.favorite,
              ),
              const PopupMenuItem(
                child: Text('Todos'),
                value: FilterOptions.all,
              )
            ],
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.favorite) {
                  _showFavoriteOnly = true;
                } else {
                  _showFavoriteOnly = false;
                }
              });
            },
          ),
        ],
      ),
      body: ProductGrid(
        showFavoriteOnly: _showFavoriteOnly,
      ),
    );
  }
}
