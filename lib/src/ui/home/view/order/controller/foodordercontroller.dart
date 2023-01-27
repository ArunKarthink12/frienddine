import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// import 'package:hotelseatbooking/all_packages.dart';

import '../../../../../../all_packages.dart';
import '../../../../../../credentials/home/view/order/model/foodorderdetailsmodel.dart';
import '../../../../../../global/global_function.dart';
// import '../model/foodorderdetailsmodel.dart';

class FoodOrderController extends GetxController {
  int quantitys = 1.obs.toInt();
  var totalPrice = 30.obs.toInt();
  var prices = 0.obs.toInt();

  Future<void> FoodOrder(int quantity, int price) async {
    totalPrice = price;
    prices = price;
    quantitys = await quantitys + quantity;
    totalPrice = await quantitys * prices;
    print('iiiiiiiiiii');
    print(quantitys);
    print(totalPrice);
    update(['order']);
  }

  Future<void> FoodOrderMinus(int quantity, int price) async {
    totalPrice = price;
    prices = price;
    if (quantitys != 0) {
      quantitys = await quantitys - quantity;
      if (quantitys == 0) {
        quantitys = 1;
        totalPrice = quantitys == 0 ? 1 * prices : await quantitys * prices;
      }
      totalPrice = quantitys == 0 ? 1 * prices : await quantitys * prices;
      print('iiiiiiiiiii');
      print(quantitys);
      print(totalPrice);
    }
    update(['order']);
  }

  var foodOrderDetails = FoodOrderDetailsResponseModel().obs;
  void foodOrderApi(
    Map<String, Object?> foodOrderRequest,
    String endPoint,
  ) async {
    try {
      // var responseData = await (ApiService()
      //     .post(endpoint: endPoint, queryParameters: foodOrderRequest));
      // var response = FoodOrderDetailsResponseModel.fromJson(responseData?.data);
      // if (response.success == true) {
      //   foodOrderDetails.value = response;
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
