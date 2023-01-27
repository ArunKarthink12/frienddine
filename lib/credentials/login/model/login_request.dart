// To parse this JSON data, do
//
//     final loginmodel = loginmodelFromJson(jsonString);

import 'dart:convert';

Loginmodel loginmodelFromJson(String str) => Loginmodel.fromJson(json.decode(str));

String loginmodelToJson(Loginmodel data) => json.encode(data.toJson());

class Loginmodel {
    Loginmodel({
        required this.success,
        required this.data,
        required this.message,
    });

    bool success;
    Data data;
    String message;

    factory Loginmodel.fromJson(Map<String, dynamic> json) => Loginmodel(
        success: json["success"],
        data: Data.fromJson(json["data"]),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": data.toJson(),
        "message": message,
    };
}

class Data {
    Data({
        required this.data,
    });

    String data;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        data: json["data"],
    );

    Map<String, dynamic> toJson() => {
        "data": data,
    };
}
