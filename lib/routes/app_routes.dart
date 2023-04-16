import 'dart:js';

import 'package:flutter/material.dart';
import 'package:uf02act04/model/City.dart';
import 'package:uf02act04/model/Product.dart';
import 'package:uf02act04/pages/CityCard.dart';
import 'package:uf02act04/pages/CityInfo.dart';
import 'package:uf02act04/pages/CityList.dart';
import 'package:uf02act04/pages/LandingPage.dart';
import 'package:uf02act04/pages/LoginPage.dart';
import 'package:uf02act04/pages/ProductInfo.dart';
import 'package:uf02act04/pages/ShoppingList.dart';
import 'package:uf02act04/pages/SplashPage.dart';
import 'package:uf02act04/routes/routes.dart';

//Getter for the approutes
Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash :(context) => const SplashPage(),
    Routes.login: (context) => const LoginPage(),
    Routes.cityList: (context) => CityList(),
    Routes.cityInfo: (context) {
      final selectedCity = ModalRoute.of(context)!.settings.arguments as City;
      return CityInfo(
        selectedCity: selectedCity
      );
    },
    Routes.shoppingList: (context) => ShoppingList(),
    Routes.shoppingInfo : (context) {
      final selectedProduct = ModalRoute.of(context)!.settings.arguments as Product;
      return ProductInfo(selectedProduct: selectedProduct);
    },
    Routes.home: (context) {
      final username = ModalRoute.of(context)!.settings.arguments as String;
      return LandingPage(username: username);
    }
  };
}