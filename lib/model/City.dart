class City {
  City(
      {required this.name,
      required this.description,
      required this.imageLink,
      required this.country,
      required this.population,
      required this.id});

  final int id;
  final String name;
  final String description;
  final String imageLink;
  final String country;
  final int population;
}
