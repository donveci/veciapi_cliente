import 'dart:convert';

import 'dart:ui';

CategoriesModel categoryModelFromJson(String str) =>
    CategoriesModel.fromJson(json.decode(str));

String categoryModelToJson(CategoriesModel data) => json.encode(data.toJson());

class CategoriesModel {
  String id;
  String nameCategory;
  bool status;
  String imageUrl;
  String description;
  Color backgroundColor;
  int noOfStore;

  CategoriesModel(
      {this.id,
      this.nameCategory,
      this.status = true,
      this.imageUrl,
      this.description,
      this.backgroundColor,
      this.noOfStore});

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      new CategoriesModel(
        id: json["id"],
        nameCategory: json["nameCategory"],
        status: json["status"],
        imageUrl: json["imageUrl"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nameCategory": nameCategory,
        "status": status,
        "imageUrl": imageUrl,
        "description": description,
      };
}
