"# Xmarket" 
# 📄 Documentation for `main.dart`

This document provides a detailed overview of the `main.dart` file, which serves as the entry point of a **supermarket management system**.

---

## 🧭 Overview

The `main.dart` file initializes the components necessary for a supermarket management system, including:

- **Suppliers**
- **Supermarkets**
- **Products**

It demonstrates how to use the classes and methods defined in different model files to set up and manage a simple inventory and supplier relationship system.

---

## 📦 Imports

The file begins by importing various model classes that facilitate the structure of the supermarket system:

- `models/product.dart` – Defines the **Product** class.
- `models/supermarket.dart` – Defines the **Supermarket** class.
- `models/supplier.dart` – Defines the **Supplier** class.
- `system/supermarket_system.dart` – Contains the logic for managing the supermarket system.

---

## 🚀 Main Function

The `main()` function is the entry point of the application where the execution begins. Here's a breakdown of what it does:

---

### 🛠️ System Initialization

```dart
var system = SupermarketSystem();


👨‍🌾 Creating Suppliers
var supplier1 = Supplier(name: "FreshCo", contactInfo: "freshco@food.com");
var supplier2 = Supplier(name: "DairyKing", contactInfo: "milk@dairy.com");

system.addSupplier(supplier1);
system.addSupplier(supplier2);


🏪 Creating a Supermarket
var market1 = Supermarket(name: "Mega Mart", location: "Downtown");
system.addSupermarket(market1);


🧃 Creating Products
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


🧾 Assigning Products to a Supermarket
system.assignProduct(market1, product1);
system.assignProduct(market1, product2);
system.assignProduct(market1, product3);


📋 Listing Suppliers and Inventories
system.listSuppliers();
system.showAllInventories();


✅ Summary
This guide gives you a solid starting point for understanding how the supermarket management system is set up and how the main.dart file ties everything together.

Happy coding and enjoy building your Flutter app! 💙🚀



