import 'product.dart';

class Supermarket {
  String name;
  String location;
  List<Product> inventory = [];

  Supermarket({required this.name, required this.location});

  void addProduct(Product product) {
    // Check if product with same title already exists
    var existing = inventory.firstWhere(
      (p) => p.title == product.title,
      orElse: () => Product(
        title: "",
        supplier: product.supplier,
        price: 0,
        quantity: 0,
      ),
    );

    if (existing.title == "") {
      inventory.add(product);
      print("Product '${product.title}' added to '$name'");
    } else {
      existing.updateQuantity(product.quantity);
      print("Updated quantity of existing product '${product.title}'");
    }
  }

  void displayInventory() {
    print("\n=== Inventory of $name ===");
    if (inventory.isEmpty) {
      print("No products in inventory.");
    } else {
      for (var product in inventory) {
        product.displayInfo();
        print("--------------");
      }
    }
  }
}