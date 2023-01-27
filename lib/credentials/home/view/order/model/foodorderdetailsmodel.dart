class FoodOrderDetailsModel {
  int? vendorId;
  String? name;
  String? mobile;
  List<Data>? data;

  FoodOrderDetailsModel({this.vendorId, this.name, this.mobile, this.data});

  FoodOrderDetailsModel.fromJson(Map<String, dynamic> json) {
    vendorId = json['vendor_id'];
    name = json['name'];
    mobile = json['mobile'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vendor_id'] = this.vendorId;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? name;
  int? price;
  int? qty;

  Data({this.name, this.price, this.qty});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['price'] = this.price;
    data['qty'] = this.qty;
    return data;
  }
}

class FoodOrderDetailsResponseModel {
  bool? success;
  bool? data;
  String? message;

  FoodOrderDetailsResponseModel({this.success, this.data, this.message});

  FoodOrderDetailsResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['data'] = this.data;
    data['message'] = this.message;
    return data;
  }
}
