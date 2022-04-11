import 'dart:convert';

import 'package:tap_assignment/app/models/built_product_model/built_product_model.dart';
import 'package:tap_assignment/app/provider/database_provider.dart';

class ProductRepository {
  late DatabaseHelper _db;
  ProductRepository() {
    _db = DatabaseHelper.instance;
  }

  // ADD PRODUCT TO DATABASE
  Future<int?> addProduct() {
    return _db.insert({
      "name": "ahmed",
      "description": "some description",
      "price": 1000,
    });
  }

  Future<List<Map<String, dynamic>>?> getAllProducts() {
    return _db.queryAllRows();
  }
}
