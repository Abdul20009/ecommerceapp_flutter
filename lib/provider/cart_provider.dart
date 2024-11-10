import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopicon/models/product_models.dart';

class CartNotifier extends Notifier<Set<ProductModels>> {
  @override
  Set<ProductModels> build() {
    return {};
  }
  void addProduct(ProductModels product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }
   void removeProduct(String productId) {
      state = state.where((p) => p.id != productId).toSet();
  }
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<ProductModels>>(() {
  return CartNotifier();
});



/*void addToCart(ProductModels product) {
    state = [...state, product];
  }

  void removeFromCart(ProductModels product) {
    state = state.where((item) => item.id != product.id).toList();
  }*/