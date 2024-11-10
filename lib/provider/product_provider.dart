import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopicon/data/product_data.dart';

final productModelsProvider = Provider((ref) {
  return availableProducts;
});

final productDetailsProvider = Provider((ref) {
  return availableDetails;
});