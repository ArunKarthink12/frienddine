import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import '../../../../../../Urls/apiUrls.dart';

// import 'package:zero_scarp/allpackages.dart';

class FoodMenuService {
  Future foodmenuservice({mobileNumber, password, confirmPassword}) async {
    log('enterrrrr');
    try {
      var data = {
        "mobileNumber": mobileNumber ?? '',
        "password": password ?? '',
        "confirmPassword": confirmPassword ?? ''
      };

      log(data.toString());
      log('dddddddddddd');

      var response = await http.post(Uri.parse(Urls.productlist), body: data);

      var jsonresponse = jsonDecode(response.body);
      log(response.body.toString());

      if (response.statusCode == 200) {
        if (jsonresponse['success'] == true) { 
        } else { 
        }
      } else {
        // Fluttertoast.showToast(msg: jsonresponse['message'].toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}
