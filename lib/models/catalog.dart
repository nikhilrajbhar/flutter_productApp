import 'dart:convert';

class CatalogModel {
  static final items = [
    Item(
        id: "product01",
        name: "samsung",
        desc: "good",
        price: 55500,
        color: "#33505a",
        image:
            "https://m.media-amazon.com/images/I/41ZGJxnJu1S._SX300_SY300_QL70_FMwebp_.jpg")
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
        desc: json["desc"],
        price: json["price"],
        color: json["color"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
