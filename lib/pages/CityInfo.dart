import 'package:flutter/material.dart';
import 'package:uf02act04/model/City.dart';

//Shows the city's Description, name and image in a dedicated page
class CityInfo extends StatelessWidget {
  const CityInfo({super.key, required this.selectedCity});

  final City selectedCity;

  returnRemoveCity(BuildContext context) {
    Navigator.pop(context, selectedCity);
  }

  showDialogBox() {}

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCity.name),
        actions: [
          IconButton( //Icon that when pressed opens the Dialog to confirm deletion of this city
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog( //The dialog
                title: const Text("Delete city?"),
                content: const Text("Are you sure you want to delete this city?"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, "Delete"),
                    child: const Text("DELETE IT YES YES"),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, "Cancel"),
                    child: const Text("Cancel"),
                  ),
                ],
              ),
              //Result from Dialog
            ).then((result) => { //If deletion is selected call the return method
                  if (result == "Delete") {returnRemoveCity(context)}
                }),
            icon: const Icon(Icons.delete),
          )
        ],
      ),
      //End of Appbar
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Hero(
                    tag: 'cityImage${selectedCity.id}',
                    child: Image.network(
                      selectedCity.imageLink,
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
                child: Text(selectedCity.description,
                    style: TextStyle(color: Colors.grey, fontSize: 15))
            ),
          ],
        ),
      ),
    );
  }
}
