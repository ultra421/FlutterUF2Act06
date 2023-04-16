import 'package:flutter/material.dart';
import 'package:uf02act04/globals.dart';
import 'package:uf02act04/main.dart';
import 'package:uf02act04/model/City.dart';
import 'package:uf02act04/pages/CityCard.dart';

class CityList extends StatefulWidget {
  CityList({super.key});

  @override
  State<CityList> createState() => _CityListState();
}

class _CityListState extends State<CityList> {
  //Method that is passed to CityCard in the ListView.builder to refresh the component
  void _updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<City> cityList = Globals.getCityList(MyApp.getLocaleString(context));

    return Center(
      child: ListView.builder(
          itemCount: cityList.length,
          itemBuilder: (BuildContext context, int index) {
            return CityCard(
              city: cityList[index],
              refreshParent: _updateState,
            );
          }
      ),
    );
  }
}
