class Product{

  Product({required this.name, required this.amount, required this.price, 
  required this.imageName, required this.description, required this.createDate});

  late String name;
  late int amount;
  late int price;
  late String imageName;
  late String description;
  late DateTime createDate;
  int? id;

}