import 'package:flutter/material.dart';
import 'package:uf02act04/globals.dart';
import 'package:uf02act04/main.dart';
import 'package:uf02act04/model/City.dart';
import 'package:uf02act04/pages/CityInfo.dart';
import 'package:uf02act04/pages/CityList.dart';
import 'package:uf02act04/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// The card used for the ListView builder, requires a method that calls the SetState() to refresh the parent
class CityCard extends StatelessWidget {
  const CityCard({super.key, required this.city, required this.refreshParent});

  final City city;
  final Function refreshParent;

  @override
  Widget build(BuildContext context) {
    AppLocalizations localText = AppLocalizations.of(context);
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: GestureDetector(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Hero(
                  //City image
                  tag: 'cityImage${city.id}',
                  child: Image.network(
                    city.imageLink,
                    width: 300,
                    height: 140,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    //City name
                    city.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    //City Population and Country
                    localText.cityPopulation(city.population),
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          onTap: () {
            //Will return the city that needs to be deleted
            Navigator.pushNamed(context, Routes.cityInfo, arguments: city)
                .then((cityToDelete) => {
                  //Wait for the cityInfo page to return a city then if a city is returned remove it
                      if (cityToDelete != null)
                        {
                          //Removes the city from the Global List, and refreshes the ListView
                          print("Removing city"),
                          Globals.getCityList(MyApp.getLocaleString(context)).remove(cityToDelete),
                          print("Removed city... updating state"),
                          refreshParent()
                        }
                    });
          }),
    );
  }
}
