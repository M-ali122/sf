// To parse this JSON data, do
//
//     final productCartModel = productCartModelFromJson(jsonString);

import 'dart:convert';

ProductCartModel productCartModelFromJson(String str) => ProductCartModel.fromJson(json.decode(str));

String productCartModelToJson(ProductCartModel data) => json.encode(data.toJson());

class ProductCartModel {
    String image;
    String productName;
    String clientName;
    String productStatus;
    String prodctPrice;

    ProductCartModel({
        required this.image,
        required this.productName,
        required this.clientName,
        required this.productStatus,
        required this.prodctPrice,
    });

    factory ProductCartModel.fromJson(Map<String, dynamic> json) => ProductCartModel(
        image: json["Image"],
        productName: json["ProductName"],
        clientName: json["ClientName"],
        productStatus: json["ProductStatus"],
        prodctPrice: json["ProdctPrice"],
    );

    Map<String, dynamic> toJson() => {
        "Image": image,
        "ProductName": productName,
        "ClientName": clientName,
        "ProductStatus": productStatus,
        "ProdctPrice": prodctPrice,
    };
}
