// To parse this JSON data, do
//
//     final productlistModel = productlistModelFromJson(jsonString);

import 'dart:convert';

ProductlistModel productlistModelFromJson(String str) => ProductlistModel.fromJson(json.decode(str));

String productlistModelToJson(ProductlistModel data) => json.encode(data.toJson());

class ProductlistModel {
    ProductlistModel({
        required this.success,
        required this.data,
        required this.message,
    });

    bool success;
    List<Datum> data;
    String message;

    factory ProductlistModel.fromJson(Map<String, dynamic> json) => ProductlistModel(
        success: json["success"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
    };
}

class Datum {
    Datum({
        required this.hashid,
        required this.name,
        required this.price,
        required this.image,
    });

    String hashid;
    String name;
    int price;
    String image;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        hashid: json["hashid"],
        name: json["name"],
        price: json["price"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "hashid": hashid,
        "name": name,
        "price": price,
        "image": image,
    };
}
