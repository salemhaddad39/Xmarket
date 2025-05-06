class Supplier {
  
  String name;
  String contactInfo;

  Supplier({required this.name ,required this.contactInfo});
   void displayInfo(){
    print("name:$name");
    print("contactInfo:$contactInfo");
    
   }
}
