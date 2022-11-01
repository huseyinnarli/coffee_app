class CollectionModel {
  final String modeltype;
  final String imagePath;
  CollectionModel({
    required this.modeltype,
    required this.imagePath,
  });
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(modeltype: 'Coffee', imagePath: 'assets/images/coffee.jpeg'),
      CollectionModel(modeltype: 'Beverages', imagePath: 'assets/images/beverages.jpeg'),
      CollectionModel(modeltype: 'Snack', imagePath: 'assets/images/snacks.jpeg')
    ];
  }
}

class PopularCoffee {
  final String name;
  final String image;
  final List<String> tags;
  final String location;
  PopularCoffee({
    required this.name,
    required this.image,
    required this.tags,
    required this.location,
  });
}

class PopularCoffeeItems {
  late final List<PopularCoffee> itemss;

  PopularCoffeeItems() {
    itemss = [
      PopularCoffee(
          name: 'Cappuccino',
          image: 'assets/images/cappuccino.jpg',
          tags: ['Donut', 'Snack'],
          location: 'Coffee Planet'),
      PopularCoffee(
          name: 'Caramel Macchiato',
          image: 'assets/images/caramel_macchiato.jpg',
          tags: ['Sweet Cakes'],
          location: 'Coffee Planet'),
      PopularCoffee(
          name: 'Creamy Ice Coffee',
          image: 'assets/images/iced_coffee.jpg',
          tags: ['Donut', 'Sweet Cakes'],
          location: 'Coffee Planet'),
    ];
  }
}

class ProjectImages {
  final imageCappuccino = 'assets/images/cappuccino.jpg';
  final imageIcedCoffee = 'assets/images/iced_coffee.jpg';
  final imageCaramelMacchiato = 'assets/images/caramel_macchiato.jpg';
}