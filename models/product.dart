import 'supplier.dart';

class Product{
  
  String title;
  Supplier supplier;
  double price;
  int quantity;

  Product({required this.title ,required this.supplier ,required this.price ,required this.quantity});

  void displayInfo(){

    print("Title:$title");
    print("Supplier:$supplier");
    print("Price:$price");
    print("quantity:$quantity");

  }
  void updateQuantity(int amount){
    if(quantity + amount < 0){
      print("woring: not enough stock to remove $amount units of '$title'");
    
    }else{
      quantity+=amount;
      print("updated quantity of '$title'to $quantity");
      
    }
  }





}