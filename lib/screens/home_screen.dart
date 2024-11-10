import 'package:flutter/material.dart';
import 'package:shopicon/widgets/all_categories_widget.dart';
import 'package:shopicon/widgets/categories_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopicon"),
        actions: const [
          Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 15),
              Icon(Icons.notification_add)
            ],
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/image1.png"),
                      fit: BoxFit.cover,
                      ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "50% off",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "GRAB",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "YOURS NOW",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Categories",
                ),
                SizedBox(height: 20),
                CategoriesWidget(),
                AllCategoriesWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
