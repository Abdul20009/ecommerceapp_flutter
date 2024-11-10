import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopicon/models/product_models.dart';
import 'package:shopicon/provider/cart_provider.dart';
import 'package:shopicon/provider/product_provider.dart';
import 'package:shopicon/widgets/all_categories_widget.dart';

class DetailProductScreen extends ConsumerStatefulWidget {
  final String productId;
  const DetailProductScreen({super.key, required this.productId});

  @override
  ConsumerState<DetailProductScreen> createState() =>
      _DetailProductScreenState();
}

class _DetailProductScreenState extends ConsumerState<DetailProductScreen> {
  Widget build(
    BuildContext context,
  ) {
    final productDetail = ref
        .watch(productDetailsProvider)
        .firstWhere((detail) => detail.id == widget.productId);

    final cartProducts = ref.watch(cartNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: Text(productDetail.title), actions: [
        cartProducts.any((product) => product.id == productDetail.id)
            ? IconButton(
                onPressed: () {
                  ref
                      .watch(cartNotifierProvider.notifier)
                      .removeProduct(productDetail.id);
                },
                icon: const Icon(Icons.bookmark),
              )
            : IconButton(
                onPressed: () {
                  ProductModels productToAdd = ProductModels(
                    id: productDetail.id,
                    price: productDetail.price,
                    title: productDetail.title,
                    imagePath: productDetail.imagePath[0],
                  );
                  ref
                      .watch(cartNotifierProvider.notifier)
                      .addProduct(productToAdd);
                },
                icon: const Icon(Icons.bookmark_border))
      ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Image Slider
                    Container(
                      height: 300,
                      child: PageView.builder(
                        itemCount: productDetail.imagePath.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              height: 250,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Image.asset(
                                productDetail.imagePath[index],
                                width: 100,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      productDetail.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Product Info",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.purple,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(productDetail.description),
                    const SizedBox(height: 20),
                    const Divider(
                      color: Colors.black,
                      height: 2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(Icons.local_shipping),
                          SizedBox(width: 10),
                          Text(
                            "Shipping Information",
                          ),
                          SizedBox(width: 100),
                          Icon(
                            Icons.grade,
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(Icons.reviews),
                          SizedBox(width: 100),
                          Text(
                            "Reviews",
                          ),
                          SizedBox(width: 100),
                          Icon(
                            Icons.grade,
                          )
                        ],
                      ),
                    ),
                    const Text(
                      "You May Also Like",
                    ),
                    const SizedBox(height: 10),
                    AllCategoriesWidget()
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple.shade200,
                        Colors.purple.shade500,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productDetail.price,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "unit price",
                            )
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Buy Now",
                              textAlign: TextAlign.right,
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
