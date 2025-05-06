
import 'models/product.dart';
import 'models/supermarket.dart';
import 'models/supplier.dart';
import 'system/supermarket_system.dart';

void main() {
  var system = SupermarketSystem();


  var supplier1 = Supplier(name: "FreshCo", contactInfo: "freshco@food.com");
  var supplier2 = Supplier(name: "DairyKing", contactInfo: "milk@dairy.com");

  system.addSupplier(supplier1);
  system.addSupplier(supplier2);

  var market1 = Supermarket(name: "Mega Mart", location: "Downtown");
  system.addSupermarket(market1);

  var product1 = Product(
    title: "Milk",
    supplier: supplier2,
    price: 2.5,
    quantity: 30,
  );

  var product2 = Product(
    title: "Orange Juice",
    supplier: supplier1,
    price: 3.5,
    quantity: 20,
  );

  var product3 = Product(
    title: "Milk",
    supplier: supplier2,
    price: 2.5,
    quantity: 10,
  );

  system.assignProduct(market1, product1);
  system.assignProduct(market1, product2);
  system.assignProduct(market1, product3); 


  system.listSuppliers();
  system.showAllInventories();
}