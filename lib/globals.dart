import 'package:uf02act04/model/City.dart';
import 'package:uf02act04/model/Product.dart';
import 'package:uf02act04/pages/CityList.dart';

class Globals {
  
  static List<City> cityListEng = [
    City(
        id: 0,
        name: "The york of News",
        description: "Lorem ipsum",
        imageLink:
            "https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80",
        country: "United States",
        population: 20000),
    City(
        id: 1,
        name: "no way Gta city",
        description: "san andreas time",
        imageLink:
            "https://3dwarehouse.sketchup.com/warehouse/v1.0/content/public/a939f77a-623a-4413-bf8f-2758ab221fa8",
        country: "San Andreas",
        population: 999999),
    City(
        id: 2,
        name: "Isaac's Basement",
        description: "Basement I",
        imageLink: "https://i.imgur.com/d0SYSJc.png",
        country: "A small house on a hill",
        population: 2),
    City(
        id: 3,
        name: "Minecraft End City",
        description: "The city at the end of the game",
        imageLink:
            "https://cdn.mos.cms.futurecdn.net/ZP43F325yTtNAhxFD3PiPJ.jpg",
        country: "The End",
        population: 15),
  ];

  static List<City> cityListSpa = [
    City(
      id: 0,
      name: "La ciudad de las noticias",
      description: "Lorem ipsum",
      imageLink: "https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80",
      country: "Estados Unidos",
      population: 20000,
    ),
    City(
      id: 1,
      name: "Ciudad GTA",
      description: "San Andreas time",
      imageLink: "https://3dwarehouse.sketchup.com/warehouse/v1.0/content/public/a939f77a-623a-4413-bf8f-2758ab221fa8",
      country: "San Andreas",
      population: 999999,
    ),
    City(
      id: 2,
      name: "El sótano de Isaac",
      description: "Sótano I",
      imageLink: "https://i.imgur.com/d0SYSJc.png",
      country: "Una pequeña casa en una colina",
      population: 2,
    ),
    City(
      id: 3,
      name: "Ciudad del Fin en Minecraft",
      description: "La ciudad al final del juego",
      imageLink: "https://cdn.mos.cms.futurecdn.net/ZP43F325yTtNAhxFD3PiPJ.jpg",
      country: "El Fin",
      population: 15,
    ),
  ];

  static List<City> cityListCat = [
    City(
      id: 0,
      name: "La ciutat de les notícies",
      description: "Lorem ipsum",
      imageLink: "https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80",
      country: "Estats Units",
      population: 20000,
    ),
    City(
      id: 1,
      name: "Ciutat GTA",
      description: "San Andreas time",
      imageLink: "https://3dwarehouse.sketchup.com/warehouse/v1.0/content/public/a939f77a-623a-4413-bf8f-2758ab221fa8",
      country: "San Andreas",
      population: 999999,
    ),
    City(
      id: 2,
      name: "El soterrani d'Isaac",
      description: "Soterrani I",
      imageLink: "https://i.imgur.com/d0SYSJc.png",
      country: "Una petita casa en una pujada",
      population: 2,
    ),
    City(
      id: 3,
      name: "Ciutat del Fi a Minecraft",
      description: "La ciutat al final del joc",
      imageLink: "https://cdn.mos.cms.futurecdn.net/ZP43F325yTtNAhxFD3PiPJ.jpg",
      country: "El Fi",
      population: 15,
    ),
  ];

//The city list that will be modified
  static List<City> getCityList(String locale){
    switch (locale){
      case "ca_ES":
        return cityListCat;
      case "es_ES":
        return cityListSpa;
      case "en_US":
        return cityListEng;
      default:
        return cityListEng;
    }
  }

  static List<Product> productListEsp = [
    Product(name: "Patata", amount: 3, price: 4, imageName: "shopping/potato.jpg",description: "Patata increible", createDate: DateTime(2020,10,23)),
    Product(name: "Cable", amount: 5, price: 1, imageName: "shopping/cable.jpg",description: "Cabel epioc :)", createDate: DateTime(2020,3,23)),
    Product(name: "Minecraft para la Nintendo 3DS", amount: 999, price: 60, imageName: "shopping/minecraft.jpg", description: "pog", createDate: DateTime(2020,6,23)),
    Product(name: "Ventilador", amount: 3, price: 23, imageName: "shopping/fan.jpg", description: "Ventilador a 2RPM, Locura", createDate: DateTime(2019,2,25)),
    Product(name: "Teclado", amount: 24, price: 3, imageName: "shopping/keyboard.png", description: "Teclado con mas de 2 teclas, una locura!", createDate: DateTime(2012,10,1)),
    Product(name: "Limon", amount: 5, price: 3, imageName: "shopping/lemon.png", description: "Limon rojo (Imagen no representa producto final)", createDate: DateTime(2025,3,23)),
    Product(name: "Mesa", amount: 9, price: 5, imageName: "shopping/table.jpg", description: "Mesa", createDate: DateTime(2021,10,23)),
    Product(name: "Tomate", amount: 2, price: 5, imageName: "shopping/tomato.jpg", description: "Tomate epiquisimo", createDate: DateTime(2023,5,23)),
    Product(name: "Zanahoria", amount: 3, price: 23, imageName: "shopping/carrot.jpg", description: "Zan-ahora con 3 colores disponibles!-ria", createDate: DateTime(1987,1,1)),
    Product(name: "Pera", amount: 2, price: 32, imageName: "shopping/pera.jpg", description: "jeje espera jajaja espera jajaj ES PERA JAJAJAJ", createDate: DateTime(2000,2,2))
  ];

  static List<Product> productListEng = [
    Product(name: "Potato", amount: 3, price: 4, imageName: "shopping/potato.jpg", description: "Amazing potato", createDate: DateTime(2020,10,23)),
    Product(name: "Cable", amount: 5, price: 1, imageName: "shopping/cable.jpg", description: "Epic cable :)", createDate: DateTime(2020,3,23)),
    Product(name: "Minecraft for Nintendo 3DS", amount: 999, price: 60, imageName: "shopping/minecraft.jpg", description: "pog", createDate: DateTime(2020,6,23)),
    Product(name: "Fan", amount: 3, price: 23, imageName: "shopping/fan.jpg", description: "Fan at 2RPM, Madness", createDate: DateTime(2019,2,25)),
    Product(name: "Keyboard", amount: 24, price: 3, imageName: "shopping/keyboard.png", description: "Keyboard with more than 2 keys, crazy!", createDate: DateTime(2012,10,1)),
    Product(name: "Lemon", amount: 5, price: 3, imageName: "shopping/lemon.png", description: "Red lemon (Image doesn't represent final product)", createDate: DateTime(2025,3,23)),
    Product(name: "Table", amount: 9, price: 5, imageName: "shopping/table.jpg", description: "Table", createDate: DateTime(2021,10,23)),
    Product(name: "Tomato", amount: 2, price: 5, imageName: "shopping/tomato.jpg", description: "Amazing tomato", createDate: DateTime(2023,5,23)),
    Product(name: "Carrot", amount: 3, price: 23, imageName: "shopping/carrot.jpg", description: "Carrot with 3 available colors!", createDate: DateTime(1987,1,1)),
    Product(name: "Pear", amount: 2, price: 32, imageName: "shopping/pera.jpg", description: "hehe wait hahaha wait hahaha IT'S PEAR HAHAHAH", createDate: DateTime(2000,2,2))
  ];

  static List<Product> productListCat = [
    Product(name: "Patata", amount: 3, price: 4, imageName: "shopping/potato.jpg",description: "Patata increïble", createDate: DateTime(2020,10,23)),
    Product(name: "Cable", amount: 5, price: 1, imageName: "shopping/cable.jpg",description: "Cable èpic :)", createDate: DateTime(2020,3,23)),
    Product(name: "Minecraft per a la Nintendo 3DS", amount: 999, price: 60, imageName: "shopping/minecraft.jpg", description: "pog", createDate: DateTime(2020,6,23)),
    Product(name: "Ventilador", amount: 3, price: 23, imageName: "shopping/fan.jpg", description: "Ventilador a 2RPM, bogeria", createDate: DateTime(2019,2,25)),
    Product(name: "Teclat", amount: 24, price: 3, imageName: "shopping/keyboard.png", description: "Teclat amb més de 2 tecles, una bogeria!", createDate: DateTime(2012,10,1)),
    Product(name: "Llimona", amount: 5, price: 3, imageName: "shopping/lemon.png", description: "Llimona vermella (Imatge no representa el producte final)", createDate: DateTime(2025,3,23)),
    Product(name: "Taula", amount: 9, price: 5, imageName: "shopping/table.jpg", description: "Taula", createDate: DateTime(2021,10,23)),
    Product(name: "Tomàquet", amount: 2, price: 5, imageName: "shopping/tomato.jpg", description: "Tomàquet epiquíssim", createDate: DateTime(2023,5,23)),
    Product(name: "Pastanaga", amount: 3, price: 23, imageName: "shopping/carrot.jpg", description: "Pastanaga amb 3 colors disponibles!", createDate: DateTime(1987,1,1)),
    Product(name: "Pera", amount: 2, price: 32, imageName: "shopping/pera.jpg", description: "jeje espera jajaja espera jajaj ES PERA JAJAJAJ", createDate: DateTime(2000,2,2))
  ];

  static List<Product> getProductList(String locale) {
    switch (locale){ 
      case "ca_ES":
        return productListCat;
      case "es_ES":
        return productListEsp;
      case "en_US":
        return productListEng;
      default:
        return productListEng;
    }
  }
}