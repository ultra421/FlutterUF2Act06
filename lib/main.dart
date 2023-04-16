import 'package:flutter/material.dart';
import 'package:uf02act04/l10n/L10n.dart';
import 'package:uf02act04/routes/app_routes.dart';
import 'package:uf02act04/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocale(newLocale);
  }

  static String getLocaleString(BuildContext context){
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    return state.getLocale().toString();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  //Default device locale variable, gets it from the L10N class
  Locale _locale = L10N.defaultDeviceLocale;

  void setLocale(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

  Locale getLocale(){
    return _locale;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Pepe",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      routes: appRoutes,
      initialRoute: Routes.splash,
      supportedLocales: L10N.avaliable, //Supported lcoale list
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      locale: _locale
    );
  }
}