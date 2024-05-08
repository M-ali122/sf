// To parse this JSON data, do
//
//     final usertypeModel = usertypeModelFromJson(jsonString);

import 'dart:convert';

List<UsertypeModel> usertypeModelFromJson(String str) => List<UsertypeModel>.from(json.decode(str).map((x) => UsertypeModel.fromJson(x)));

String usertypeModelToJson(List<UsertypeModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UsertypeModel {
    dynamic id;
    dynamic type;
    dynamic typeDescription;
    dynamic icon;
    dynamic createdAt;
    dynamic updatedAt;

    UsertypeModel({
       this.id,
       this.type,
       this.typeDescription,
       this.icon,
       this.createdAt,
       this.updatedAt,
    });

    factory UsertypeModel.fromJson(Map<String, dynamic> json) => UsertypeModel(
        id: json["id"],
        type: json["type"],
        typeDescription: json["type_description"],
        icon: json["icon"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "type_description": typeDescription,
        "icon": icon,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
