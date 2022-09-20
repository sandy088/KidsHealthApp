import 'dart:convert';

import 'package:flutter/material.dart';

class RecipeeModel {
  static List<Item2> items = [
    Item2(
        id: 1,
        name: "!! Internet Connection",
        desc: "Connection to the internet failed",
        image:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Simple_Alert.svg/1200px-Simple_Alert.svg.png")
  ];

  Item2 getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);
  Item2 getByPosition(int pos) => items[pos];
}

class Item2 {
  final int id;
  final String name;
  final String desc;

  final String image;

  Item2({
    required this.id,
    required this.name,
    required this.desc,
    required this.image,
  });

  Item2 copyWith({
    int? id,
    String? name,
    String? desc,
    String? image,
  }) {
    return Item2(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'image': image,
    };
  }

  factory Item2.fromMap(Map<String, dynamic> map) {
    return Item2(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item2.fromJson(String source) =>
      Item2.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item2 &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ desc.hashCode ^ image.hashCode;
  }
}
