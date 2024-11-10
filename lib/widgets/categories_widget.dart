import 'package:flutter/material.dart';
import 'package:shopicon/screens/home_screen.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  Widget selectedWidget = Text('Select a category');
  @override
  Widget build(BuildContext context) {
    String selectedCategory = '';
    return Column(
      children: [
        Row(
          children: [
            ChoiceChip(
              selectedColor: Colors.blue,
              label: const Text("AllCategories"),
              selected: selectedWidget is HomeScreen,
              onSelected: (bool selected) {
                setState(() {
                  selectedWidget = const HomeScreen();
                });
              },
            ),
            const SizedBox(width: 8),
            ChoiceChip(
              label: const Text("Men"),
              selected: selectedCategory == "Men",
              onSelected: (value) {
                setState(() {
                  selectedCategory = "Men";
                });
              },
            ),
            const SizedBox(width: 8),
            ChoiceChip(
              label: const Text("Men"),
              selected: selectedCategory == "Men",
              onSelected: (value) {
                setState(() {
                  selectedCategory = "Men";
                });
              },
            )
          ],
        )
      ],
    );
  }
}
