import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopicon/provider/product_provider.dart';
import 'package:shopicon/widgets/products.dart';

class AllCategoriesWidget extends ConsumerWidget {
  const AllCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableProducts =
        ref.watch(productModelsProvider); // Get product models
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: availableProducts.length,
      itemBuilder: (context, index) {
        final product = availableProducts.elementAt(index);
        return Product(
          image: product.imagePath,
          title: product.title,
          products: product,
          price: "\$${product.price}",
        );
      },
    );
  }
}
