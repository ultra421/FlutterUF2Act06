import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uf02act04/globals.dart';
import 'package:uf02act04/main.dart';
import 'package:uf02act04/model/Product.dart';
import 'package:uf02act04/pages/ShoppingCard.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({super.key});

  @override
  State<ShoppingList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {

  @override
  Widget build(BuildContext context) {
    List<Product> productList = Globals.getProductList(MyApp.getLocaleString(context));

    return Center(
      child:ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          Product selectedProduct = productList[index];
          selectedProduct.id = index;
          return ShoppingCard(
            product: selectedProduct
          );
        }
      )
    );
  }
}