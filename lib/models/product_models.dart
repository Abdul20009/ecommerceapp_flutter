class ProductModels {
  const ProductModels(
      {required this.id, required this.title, required this.imagePath, required this.price});
  final String id;
  final String title;
  final String imagePath;
  final String price;
}

class ProductDetails {
  const ProductDetails(
      {required this.imagePath,
      required this.title,
      required this.price,
      required this.description,
      required this.id});
  final List<String> imagePath;
  final String title;
  final String price;
  final String description;
  final String id;
}
