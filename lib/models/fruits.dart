class Fruit {
  String name;
  String price;
  String imgPath;
  String rating;

  Fruit({
    required this.name,
    required this.price,
    required this.imgPath,
    required this.rating,
  });

  String get _name => name;
  String get _price => price;
  String get _imgPath => imgPath;
  String get _rating => rating;
}
