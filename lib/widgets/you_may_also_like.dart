/*
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopicon/provider/product_provider.dart';
import 'package:shopicon/screens/product_details_screen.dart';

class YouMayAlsoLike extends ConsumerWidget {
  const YouMayAlsoLike({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableProducts = ref.watch(productModelsProvider);
    final productDetails = ref.watch(productDetailsProvider);  
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: availableProducts.length,
        itemBuilder: (context, index) {
          final product = availableProducts[index];

          return GestureDetector(
            onTap: () {
              // Find the corresponding ProductDetails by matching the id
              final selectedProductDetails = productDetails.firstWhere(
                (details) => details.id == product.id,
              );

              // Navigate to the ProductDetailsScreen with the found details
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailProductScreen(productId: product.id),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        product.imagePath,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        product.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "\$${product.price}", // Display the price from ProductModels
                        style: const TextStyle(color: Colors.purple),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
*/
