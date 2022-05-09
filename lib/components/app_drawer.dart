import 'package:flutter/material.dart';
import 'package:project_shop/utils/app_routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            centerTitle: true,
            title: const Text('Bem vindo, usuário!'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.shop_rounded,
              color: Colors.grey,
            ),
            title: Text(
              'Loja',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.grey,
                  ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.home);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.payment_rounded,
              color: Colors.grey,
            ),
            title: Text(
              'Pedidos',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.grey,
                  ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.orders);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.edit_rounded,
              color: Colors.grey,
            ),
            title: Text(
              'Gerenciar produtos',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.grey,
                  ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.products);
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
