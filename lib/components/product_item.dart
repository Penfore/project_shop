import 'package:flutter/material.dart';
import 'package:project_shop/models/product.dart';
import 'package:project_shop/utils/app_routes.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          child: Image.network(
            product.imageUrl!,
            fit: BoxFit.cover,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.productDetail,
              arguments: product,
            );
          },
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            onPressed: () {
              product.toggleFavorite();
            },
            icon: Icon(product.isFavorite!
                ? Icons.favorite_rounded
                : Icons.favorite_border_rounded),
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Text(
            product.title!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_rounded),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
