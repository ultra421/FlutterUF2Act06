import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uf02act04/main.dart';
import 'package:uf02act04/model/Product.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.selectedProduct});

  final Product selectedProduct;

  @override
  Widget build(BuildContext context) {

    var currencySymbol = NumberFormat.currency(locale: MyApp.getLocaleString(context)).currencySymbol;

    final AppLocalizations texts = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedProduct.name),
      ),
      //End of Appbar
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Hero(
                    tag: 'productImage${selectedProduct.id}',
                    child: Image(
                      image: AssetImage(selectedProduct.imageName),
                      width: 800,
                      height: 380,
                    )),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
                padding: EdgeInsets.all(50),
                child: Text(
                  selectedProduct.name,
                  style: TextStyle(color: Colors.grey, fontSize: 15)
                )
            ),
            Text(
              //Descritption
              selectedProduct.description,
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.normal), 
            ),
            Text(
              //Price and amount
              texts.productInfoAmount(selectedProduct.amount)
            ),
            Text(
              //last update time text
              texts.lastUpdate(DateFormat.yMMMMd(MyApp.getLocaleString(context)).format(selectedProduct.createDate))
            ),
            Text(
              //Price
              NumberFormat.currency(locale:MyApp.getLocaleString(context), symbol: currencySymbol).format(selectedProduct.price)
            )
          ],
        ),
      ),
    );
  }
}