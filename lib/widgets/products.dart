import 'package:flutter/material.dart';
import 'package:shopicon/models/product_models.dart';
import 'package:shopicon/screens/product_details_screen.dart';

class Product extends StatelessWidget {
  const Product(
      {super.key,
      required this.image,
      required this.title,
      required this.products,
      required this.price
      });
  final String image;
  final String price;
  final String title;
  final ProductModels products;
  void _selectedProdiuct(
    BuildContext context,
  ) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return DetailProductScreen(productId: products.id);
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _selectedProdiuct(context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color.fromARGB(31, 35, 34, 34)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                price,
                style: const TextStyle(color: Colors.purple),
              )
            ],
          ),
        ),
      ),
    );
  }
}
