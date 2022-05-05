import 'package:flutter/material.dart';
import 'package:project_shop/components/app_drawer.dart';
import 'package:project_shop/components/order.dart';
import 'package:project_shop/models/oder_list.dart';
import 'package:provider/provider.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OrderList orders = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Meus pedidos',
        ),
      ),
      body: ListView.builder(
        itemCount: orders.itemsCount,
        itemBuilder: (context, index) =>
            OrderWidget(order: orders.items[index]),
      ),
      drawer: const AppDrawer(),
    );
  }
}
