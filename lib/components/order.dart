import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_shop/models/order.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('R\$ ${order.total.toStringAsFixed(2)}'),
        subtitle: Text(
          DateFormat('dd/MM/yyyy hh:mm').format(order.date),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.expand_more_rounded),
          onPressed: () {},
        ),
      ),
    );
  }
}