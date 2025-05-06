
import '../models/product.dart';
import '../models/supermarket.dart';
import '../models/supplier.dart';

class SupermarketSystem {
  final List<Supermarket> _markets = [];
  final List<Supplier> _suppliers = [];

  void addSupplier(Supplier supplier) {
    _suppliers.add(supplier);
    print("Supplier '${supplier.name}' added to the system.");
  }

  void addSupermarket(Supermarket market) {
    _markets.add(market);
    print("Supermarket '${market.name}' added to the system.");
  }

  void assignProduct(Supermarket market, Product product) {
    market.addProduct(product);
  }

  void showAllInventories() {
    for (var market in _markets) {
      market.displayInventory();
    }
  }

  void listSuppliers() {
    print("\n=== All Suppliers ===");
    for (var s in _suppliers) {
      s.displayInfo();
      print("--------------");
    }
  }
}
