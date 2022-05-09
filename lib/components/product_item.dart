import 'package:flutter/material.dart';
import 'package:project_shop/models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(product.imageUrl),
      ),
      title: Text(product.name),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.edit_rounded),
              color: Theme.of(context).colorScheme.primary,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.delete_rounded),
              color: Theme.of(context).colorScheme.error,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
