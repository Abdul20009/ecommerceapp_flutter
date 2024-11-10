import 'package:flutter/material.dart';
import 'package:shopicon/data/product_data.dart';
import 'package:shopicon/widgets/products.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shopicon",
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.notifications),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child:GridView.builder(
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
