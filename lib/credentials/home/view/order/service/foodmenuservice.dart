import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import '../../../../../../Urls/apiUrls.dart';
import '../model/foodmenumodel.dart';
// import '../model/productlistmodel.dart';

// import 'package:zero_scarp/allpackages.dart';

class ProductListService {
  Future<ProductlistModel?> productlistservice({
    category,
    vendor,
  }) async {
    try {
      var request = http.MultipartRequest('POST', Uri.parse(Urls.productlist));
      request.fields.addAll({
        "category": category ?? '',
        "vendor": vendor ?? '',
      });

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var json = await response.stream.bytesToString();
        log(json);
        log('json');
        return productlistModelFromJson(json);
      } else {
        print(response.reasonPhrase);
      }

      // var data = {
      //   "category": category ?? '',
      //   "vendor": vendor ?? '',
      // };

      // log(data.toString());
      log('dddddddddddd');

      // // var response = await http.post(Uri.parse(Urls.productlist), body: data);

      // var jsonresponse = jsonDecode(response.body);
      // log(response.body.toString());

      // if (response.statusCode == 200) {
      //   // if (jsonresponse['success'] == true) {
      //   return ProductlistModel.fromJson(jsonresponse);
      //   // } else {}
      // } else {
      //   // Fluttertoast.showToast(msg: jsonresponse['message'].toString());
      // }
    } catch (e) {
      rethrow;
    }
  }
}
