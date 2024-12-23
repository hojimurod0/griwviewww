import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grid_view/data/product_data.dart';
import 'package:grid_view/models/product_models.dart';
import 'package:grid_view/widgets/card_widget.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 420,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          log("Item count: ${products.length}");
          Product product = products[index];
          return ProductCard(product: product);
        },
      ),
    );
  }
}
