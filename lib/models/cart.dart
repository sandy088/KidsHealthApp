import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  //Catalog field
  late CatalogModel _catalog;

  final List<int> _itemIds = [];

  //get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice => items.fold(0, (total, current) => total + 5);

  //Add Items

  void Add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
