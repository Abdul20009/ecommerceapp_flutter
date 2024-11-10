import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopicon/provider/cart_provider.dart';
import 'package:shopicon/widgets/products.dart';

class BookmarkScreen extends ConsumerWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableProducts = ref.watch(cartNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bookmarks",
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: availableProducts.isEmpty
            ? const Center(
                child: Text(
                  "No Bookmarks Added Yet",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  ),
              )
            : GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
              ),
      )),
    );
  }
}
