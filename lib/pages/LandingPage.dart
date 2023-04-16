import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uf02act04/main.dart';
import 'package:uf02act04/pages/CityList.dart';
import 'package:uf02act04/pages/ShoppingList.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.username});

  final String username;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations texts = AppLocalizations.of(context);

    String username;
    if (widget.username == null) {
      username = "none";
    } else {
      username = widget.username;
    }

    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text(texts.hello(username)),
          actions: <Widget>[
            DropdownButton(
              icon:const Icon(Icons.language_outlined),
              focusColor: Colors.blueAccent,
              hint: Text(texts.languageSelectionLabel),
              items: const [
                DropdownMenuItem(
                  value: Locale("en","US"),
                  child: Text("🇺🇸 English (US)")
                ),
                DropdownMenuItem(
                  value: Locale("es","ES"),
                  child: Text("🇪🇸 Español (ES)")
                ),
                DropdownMenuItem(
                  value: Locale("ca","ES"),
                  child: Text("🇪🇸 Catalan")
                )
              ],
              onChanged: (locale) => {
                if (locale != null){
                  print(locale),
                  setState(() {
                    MyApp.setLocale(context, locale);
                  })
                }
              })
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.business)),
              Tab(icon: Icon(Icons.shopping_bag_outlined)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CityList(),
            ShoppingList()
          ],
        ),
      )
    );
  }
}