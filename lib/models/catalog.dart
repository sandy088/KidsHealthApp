// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "!! Internet Connection",
        desc: "Connection to the internet failed",
        nextPager: "/healthyDietPage",
        image:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Simple_Alert.svg/1200px-Simple_Alert.svg.png")
  ];

  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String nextPager;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.nextPager,
    required this.image,
  });

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    String? nextPager,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      nextPager: nextPager ?? this.nextPager,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'nextPager': nextPager,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      nextPager: map['nextPager'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, nextPager: $nextPager, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.nextPager == nextPager &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        nextPager.hashCode ^
        image.hashCode;
  }
}
