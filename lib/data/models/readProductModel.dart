import 'package:crud/data/models/product.dart';

class ReadProductModel {
  String? status;
  List<Products>? Product;

  ReadProductModel({this.status, this.Product});

  ReadProductModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      Product = <Products>[];
      json['data'].forEach((v) {
        Product!.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (Product != null) {
      data['data'] = Product!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
