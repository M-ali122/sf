// To parse this JSON data, do
//
//     final settingModel = settingModelFromJson(jsonString);

import 'dart:convert';

SettingModel settingModelFromJson(String str) => SettingModel.fromJson(json.decode(str));

String settingModelToJson(SettingModel data) => json.encode(data.toJson());

class SettingModel {
    dynamic id;
    dynamic key;
    dynamic value;
    dynamic createdAt;
    dynamic updatedAt;

    SettingModel({
        this.id,
         this.key,
         this.value,
         this.createdAt,
         this.updatedAt,
    });

    factory SettingModel.fromJson(Map<String, dynamic> json) => SettingModel(
        id: json["id"],
        key: json["key"],
        value: json["value"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "key": key,
        "value": value,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
