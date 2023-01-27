class FoodMenuModel {
  bool? success;
  List<Data>? data;
  String? message;

  FoodMenuModel({this.success, this.data, this.message});

  FoodMenuModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String? hashid;
  String? name;
  int? price;
  String? image;

  Data({this.hashid, this.name, this.price, this.image});

  Data.fromJson(Map<String, dynamic> json) {
    hashid = json['hashid'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hashid'] = this.hashid;
    data['name'] = this.name;
    data['price'] = this.price;
    data['image'] = this.image;
    return data;
  }
}

class FoodMenuRequest {
  String? category;
  String? vendor;

  FoodMenuRequest({this.category, this.vendor});

  FoodMenuRequest.fromJson(Map<String, dynamic> json) {
    category = json[' category'];
    vendor = json['vendor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data[' category'] = this.category;
    data['vendor'] = this.vendor;
    return data;
  }
}
