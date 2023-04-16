import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uf02act04/main.dart';
import 'package:uf02act04/model/Product.dart';
import 'package:uf02act04/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    AppLocalizations localText = AppLocalizations.of(context);

    return Card(
      elevation: 1,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: GestureDetector(
        child: Row(
          children:<Widget> [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Hero(
                tag: 'productImage${product.id!}',
                child: Image(
                  image: AssetImage(product.imageName),
                  width: 300,
                  height: 140,
                )
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                Text(
                  //Product name
                  product.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20
                  ),
                ),
                Text(
                  //Price and amount
                  localText.productCardInfo(product.amount, NumberFormat.currency(locale:MyApp.getLocaleString(context)).format(product.price)),
                  style: const TextStyle(color: Colors.grey),
                ),
                Text(
                  localText.lastUpdate(DateFormat.yMMMMd(MyApp.getLocaleString(context)).format(product.createDate))
                )
              ]
            )
          ],
        ),
        onTap: () {
          Navigator.pushNamed(context, Routes.shoppingInfo, arguments: product);
        }
      ),
    );
  }
}