class Category {
  int id;
  String name;
  String image;
  bool isSelected = false;
  Category(
      {required this.id,
      required this.name,
      this.isSelected = false,
      required this.image});
}
