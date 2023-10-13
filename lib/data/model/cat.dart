class Cat {
  final String id, url;
  final int width, hight;

  Cat({
    required this.id,
    required this.url,
    this.width = 500,
    this.hight = 500,
  });
  factory Cat.fromMap(Map m) {
    return Cat(
        id: m["id"], url: m["url"], width: m["width"], hight: m["height"]);
  }
}
