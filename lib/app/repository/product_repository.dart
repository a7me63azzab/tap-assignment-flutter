import 'dart:convert';

import 'package:tap_assignment/app/models/built_product_model/built_product_model.dart';
import 'package:tap_assignment/app/provider/database_provider.dart';

class ProductRepository {
  late DatabaseHelper _db;
  ProductRepository() {
    _db = DatabaseHelper.instance;
  }

  // ADD PRODUCT TO DATABASE
  Future<int?> addProduct(BuiltProductModel productModel) {
    return _db.insert({
      "name": productModel.name,
      "description": productModel.description,
      "price": productModel.price,
    });
  }

  Future<List<Map<String, dynamic>>?> getAllProducts() {
    return _db.queryAllRows();
  }

  Future<List<Map<String, dynamic>>?> search({required String term}) {
    print("term from repo -=-> $term");
    return _db.search(term: term);
  }
}
