import 'dart:convert';
import 'dart:developer';

import '../../../../Urls/apiUrls.dart';
import '../../../../all_packages.dart';
import 'package:http/http.dart' as http;
import '../../../../global/global_function.dart';
import '../model/login_request.dart';
// import '../model/request/login_request.dart';

class LoginService {
  Future<Loginmodel?> loginService({mobile, mpin}) async {
    try {
      var data = {'mobile': mobile ?? '', 'mpin': mpin ?? ''};
      // print(' ');
      log(data.toString());
      var response = await http.post(Uri.parse(Urls.login), body: data);
      var jsonresponse = json.decode(response.body);
      log(jsonresponse.toString());

      if (jsonresponse['success'] == true) {
        print('kowsiiiiii');
        globalFunction.toast(jsonresponse['message'], Colors.red);
        return Loginmodel.fromJson(jsonresponse);
      } else {
        return globalFunction.toast(jsonresponse['message'], Colors.red);
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
