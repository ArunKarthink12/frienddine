// import 'package:hotelseatbooking/all_packages.dart';

import '../../../../../../all_packages.dart';
import '../../../../../../global/global_function.dart';
import '../model/foodmenumodel.dart';
import '../model/foodorderdetailsmodel.dart';

class FoodOrderDetailsController extends GetxController {
  var foodOrderDetails = FoodOrderDetailsResponseModel().obs;
  void foodOrderApi(
    FoodMenuRequest foodMenuRequest,
    String endPoint,
  ) async {
    try {
      // var responseData = await (ApiService()
      //     .post(endpoint: endPoint, queryParameters: foodMenuRequest.toJson()));
      // var response = FoodOrderDetailsResponseModel.fromJson(responseData?.data);
      // if (response.success == true) {
      //   foodOrderDetails.value = response;
      //   print('hhhhhhhhhh');
      //   print(foodOrderDetails.value.success);
      //   globalFunction.toast(response.message!.toString(), Colors.red);
      // } else {
      //   globalFunction.toast(response.message!.toString(), Colors.red);
      // }
    } catch (e) {
      var array = e.toString().split(': ');
      if (array.length > 1) {
        var secondArray = array[1].split(' [');
        if (secondArray.length > 1) {
          globalFunction.toast(secondArray[0], Colors.red);
        } else {
          globalFunction.toast('something went wrong'.tr, Colors.red);
        }
      } else {
        globalFunction.toast('something went wrong'.tr, Colors.red);
      }
    }
    update(['foodDetails']);
  }
}
