import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../../../Urls/apiUrls.dart';
import '../model/foodcategories.dart';

// import 'package:zero_scarp/allpackages.dart';
// import 'package:zero_scarp/model/homescreenSeparatemodel.dart';

// import '../model/category_response.dart';

class FoodCategoriesService {
  Future<FoodCategoriesModel?> foodCategoriesService() async {
    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // var token = sharedPreferences.getString(Constants.authToken);
    try {
      var response = await http.post(
        Uri.parse(Urls.productcatagory),
      );

      var jsonresponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        // if (jsonresponse['success'] == true) {
        // log('kkkkk');
        return FoodCategoriesModel.fromJson(jsonresponse);
        // } else {
        // Fluttertoast.showToast(msg: jsonresponse['message'].toString());
        // return null;
        // }
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
