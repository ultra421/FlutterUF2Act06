import 'package:flutter/material.dart';
import 'package:uf02act04/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed( //Fake loading time
      const Duration(seconds: 1)
    ).then((value) => {
      Navigator.pushReplacementNamed(context, Routes.login)
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations texts = AppLocalizations.of(context);
    
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 50),
          Image.network("https://cdn.pixabay.com/photo/2016/01/02/01/17/city-1117433__340.png"),
          const SizedBox(
            height: 50,
            width: 50,
          ),
          const SizedBox(height:15),
          Text(texts.loadingText),
          const SizedBox(height:15),
          const Center (
            child: SizedBox(
              width:200,
              height: 200,
              child: CircularProgressIndicator()
            )
          ),
          Center (
            child: Text(texts.loading),
          )
        ],
      )
    );
  }
}