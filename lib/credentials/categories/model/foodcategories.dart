// To parse this JSON data, do
//
//     final foodCategoriesModel = foodCategoriesModelFromJson(jsonString);

import 'dart:convert';

FoodCategoriesModel foodCategoriesModelFromJson(String str) => FoodCategoriesModel.fromJson(json.decode(str));

String foodCategoriesModelToJson(FoodCategoriesModel data) => json.encode(data.toJson());

class FoodCategoriesModel {
    FoodCategoriesModel({
        required this.success,
        required this.data,
        required this.message,
    });

    bool success;
    List<Datum> data;
    String message;

    factory FoodCategoriesModel.fromJson(Map<String, dynamic> json) => FoodCategoriesModel(
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
    });

    String hashid;
    String name;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        hashid: json["hashid"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "hashid": hashid,
        "name": name,
    };
}
