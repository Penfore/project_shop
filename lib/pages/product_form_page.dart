import 'package:flutter/material.dart';
import 'package:project_shop/components/app_drawer.dart';

class ProductFormPage extends StatefulWidget {
  const ProductFormPage({Key? key}) : super(key: key);

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Formulário de Produto'),
      ),
      drawer: const AppDrawer(),
    );
  }
}
