import 'dart:developer';
 
// import '../model/response/login_response.dart';
import '../../../../all_packages.dart';
import '../../../../global/global_function.dart';
import '../../categories/widget.dart';
// import '../model/request/login_request.dart';
import '../model/login_request.dart';
import '../service/loginservice.dart';

class LoginController extends GetxController {
  RxBool? checkLogin = false.obs;
  TextEditingController mobileController = TextEditingController();
  RxList<Loginmodel> getloginmodel = <Loginmodel>[].obs;

  TextEditingController mPinController = TextEditingController();
  var clint = LoginService();
  Future loginController({context}) async {
    // SharedPreferences _sharedPreferences =
    //     await SharedPreferences.getInstance();

    if (mobileController.text.isEmpty) {
      globalFunction.toast('Please enter mobile number', Colors.red);
    } else if (mPinController.text.isEmpty) {
      globalFunction.toast('Please enter mpin', Colors.red);
    } else {
      checkLogin!(true);
      // if (checkLogin!.value) {
      //   _loadingBar(context);
      // }

      try {
        var response = await clint.loginService(
            mobile: mobileController.text, mpin: mPinController.text);

        if (response != null) {
          getloginmodel.add(response);
          log(getloginmodel[0].data.toString());
          // Get.to(const FoodCategories());
          Get.to(const Categories());
          // _sharedPreferences.setString(Constants.authToken, response.token!);
          // _sharedPreferences.setString(
          //     Constants.userName, response.data!.name!);
          // _sharedPreferences.setString(
          //     Constants.phoneno, response.data!.phoneNo.toString());
          // var mobile = _sharedPreferences.getString(Constants.phoneno);
          // log('mobile------${mobile.toString()}');
          // Get.toNamed('/home');
          // getloginmodel.add(response);
          // log(getloginmodel.toString());
          // isloginLoad(false);
        } else {
          // globalFunction.toast('Unauthorised'.tr, Colors.red);
          // Fluttertoast.showToast(msg: response!.message!);
          Get.back();
        }
      } catch (e) {
        rethrow;
      }
    }
  }

  // Future<void> loginApi(LoginRequest loginRequest, String endPoint) async {
  //   try {
  //     final prefs = await SharedPreferences.getInstance();
  //     var responseData = await (ApiService()
  //         .post(endpoint: endPoint, queryParameters: loginRequest.toJson()));
  //     var response = LoginResponse.fromJson(responseData?.data);
  //     print('response....................');
  //     print(response.toJson());
  //     if (response.success == true) {
  //       print('response.data!.data!');
  //       print(response.data!.data!);
  //       checkLogin = true;
  //       await prefs.setBool('loginSuccess', true);
  //       await prefs.setString('token', response.data!.data!);
  //       Get.to(const FoodCategories());
  //       globalFunction.toast(response.message.toString(), Colors.green);
  //     } else {
  //       AppSharePreference.loginPrefere(false);
  //       globalFunction.toast('Please check credientials'.tr, Colors.red);
  //     }
  //   } catch (e) {
  //     globalFunction.toast('Credientials incorrect'.tr, Colors.red);
  //     // var array = e.toString().split(': ');
  //     // if (array.length > 1) {
  //     //   var secondArray = array[1].split(' [');
  //     //   if (secondArray.length > 1) {
  //     //     globalFunction.toast(secondArray[0], Colors.red);
  //     //   } else {
  //     //     globalFunction.toast('something went wrong'.tr, Colors.red);
  //     //   }
  //     // } else {
  //     //   globalFunction.toast('something went wrong'.tr, Colors.red);
  //     // }
  //   }
  // }
}
