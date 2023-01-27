import 'dart:developer';

// import 'package:hotelseatbooking/all_packages.dart';

import '../../../../../../all_packages.dart';
import '../../../../../../credentials/home/view/order/model/foodmenumodel.dart';
import '../../../../../../global/global_function.dart';
// import '../model/foodmenumodel.dart';

class FoodMenuController extends GetxController {
  RxList<FoodMenuModel> friendsresponse = <FoodMenuModel>[].obs;
  RxBool loading = false.obs;
  void foodMenuApi(
    Map<String, String> foodMenuRequest,
    String endPoint,
  ) async {
    try {
      // loadingbar(true, 'foodMenu');
      // var responseData = await (ApiService()
      //     .post(endpoint: endPoint, queryParameters: foodMenuRequest));
      // var response = FoodMenuModel.fromJson(responseData?.data);
      // if (response.success == true) {
      //   friendsresponse.add(response);
      //   loading(true);
      //   log("responce${friendsresponse}");
      //   // globalFunction.toast(response.message!.toString(), Colors.red);
      // } else {
      //   loading(true);
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
    } finally {
      loadingbar(false, 'foodMenu');
    }
    update(['foodmenu']);
  }

  void loadingbar(value, type) {
    loading.value = value;
    update([type]);
  }
}
