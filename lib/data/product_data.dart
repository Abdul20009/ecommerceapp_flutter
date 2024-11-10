import 'package:shopicon/models/product_models.dart';

const List<ProductModels> availableProducts = [
  ProductModels(
    price: "56.25",
    id: "p1",
    title: "Under Armour Men's Charged Assert 10",
    imagePath: "assets/images/shoe1.png",
  ),
  ProductModels(
    price: "59.37",
    id: "p2",
    title: "Skechers Men's Energy Afterburn",
    imagePath: "assets/images/shoe2.png",
  ),
  ProductModels(
    price: "77.98",
    id: "p3",
    title: "Puma Mens Tazon 6 Cross Trainer",
    imagePath: "assets/images/shoe3.png",
  ),
  ProductModels(
    price: "51.97",
    id: "p4",
    title: "adidas Men's Hoops 3.0 Mid Sneaker",
    imagePath: "assets/images/shoe4.png",
  ),
];

const List<ProductDetails> availableDetails = [
  ProductDetails(
      id: "p1",
      imagePath: [
        "assets/images/shoe1.png",
        "assets/images/shoe11.png",
        "assets/images/shoe111.png"
      ],
      title: "Under Armour Men's Charged Assert 10",
      price: "56.25",
      description:
          "Lightweight, breathable mesh upper with synthetic overlays for added durability & support"),
  ProductDetails(
      id: "p2",
      imagePath: [
        "assets/images/shoe2.png",
        "assets/images/shoe22.png",
        "assets/images/shoe222.png"
      ],
      title: "Skechers Men's Energy Afterburn",
      price: "59.37",
      description:
          "The Skechers Men's Energy Afterburn is a highly popular athletic sneaker known for its comfort, durability, and classic sporty design"),
  ProductDetails(
      id: "p3",
      imagePath: [
        "assets/images/shoe3.png",
        "assets/images/shoe33.png",
        "assets/images/shoe333.png"
      ],
      title: "Puma Mens Tazon 6 Cross Trainer",
      price: "77.98",
      description:
          "SMOOTH AND SNUG: Sleek, streamlined silhouette with synthetic leather upper and midfoot saddle for maximum fit and comfort."),
  ProductDetails(
      id: "p4",
      imagePath: [
        "assets/images/shoe4.png",
        "assets/images/shoe44.png",
        "assets/images/shoe444.png"
      ],
      title: "adidas Men's Hoops 3.0 Mid Sneaker",
      price: "51.97",
      description:
          "Men's mid-cut basketball-style shoes with a vintage look"),
];
