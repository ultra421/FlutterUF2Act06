import 'package:flutter/material.dart';
import 'package:uf02act04/main.dart';
import 'package:uf02act04/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formkey = GlobalKey<FormState>();
  final nameFormController = TextEditingController();

  void goToLandingPage(String username) {
    Navigator.pushReplacementNamed(context, Routes.home, arguments: username);
  }

  @override
  Widget build(BuildContext context) {
    AppLocalizations localText = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            //Language selector dropdown List
            DropdownButton(
              icon:const Icon(Icons.language_outlined),
              focusColor: Colors.blueAccent,
              hint: Text(localText.languageSelectionLabel),
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
      ),
      body: Form(
        key: _formkey,
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage('FlutterLogo.png')),
              ),
              DecoratedFormTextField(fieldname: localText.username,check: "user", controller: nameFormController),
              DecoratedFormTextField(fieldname: localText.password,check: "pass12345", controller: TextEditingController(),),
              ElevatedButton(
                onPressed: () {
                  goToLandingPage(nameFormController.text);
                  // if (_formkey.currentState!.validate()) {
                  //   goToCityList(nameFormController.text);
                  // } else {
                  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Not a valid user/password combination")));
                  // }
                },
                child: Text(localText.login),
              ),
            ],
          ),
        ) 
      ),
    );
  }
}

class DecoratedFormTextField extends StatelessWidget {
  const DecoratedFormTextField({super.key, required this.fieldname, required this.check, required this.controller});

  final String fieldname;
  final String check;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      width: 400,
      height: 75,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          decoration: InputDecoration(
            icon: const Icon(Icons.person),
            label: Text(fieldname),
            hintText: fieldname
          ),
          controller: controller,
          validator: (value) {
            if (value != check) {
              return "Not valid";
            }
            return null;
          },
        ),
      )
    );
  }
}