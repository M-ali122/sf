// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

CategoryModel categoryModelFromJson(String str) => CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
    dynamic id;
    dynamic category;
    dynamic description;
    dynamic icon;
    dynamic createdAt;
    dynamic updatedAt;
    dynamic subCategories;

    CategoryModel({
       this.id,
       this.category,
       this.description,
       this.icon,
       this.createdAt,
       this.updatedAt,
       this.subCategories,
    });

    factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"],
        category: json["category"],
        description: json["description"],
        icon: json["icon"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        subCategories: json["sub_categories"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "category": category,
        "description": description,
        "icon": icon,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "sub_categories": subCategories,
    };
}
