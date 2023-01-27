// import 'package:zero_scarp/allpackages.dart';
// import 'package:zero_scarp/model/category_response.dart';
// import 'package:zero_scarp/service/category_service.dart';

// import 'package:hotelseatbooking/src/ui/categories/model/foodcategories.dart';

// import 'package:friendsdine/src/ui/categories/model/foodcategories.dart';

import 'package:friendsdine/credentials/categories/model/foodcategories.dart';

import '../../../../../all_packages.dart';
import '../../../../credentials/categories/service/foodcataservice.dart';
// import '../../model/foodcategories.dart';
// import '../../service/foodcataservice.dart';
// import '../service/foodcataservice.dart';

class FoodCategoriesController extends GetxController {
  // RxBool categoryLoad = true.obs;
  RxBool loadingindicator = true.obs;
  RxList<FoodCategoriesModel> friendsresponse = <FoodCategoriesModel>[].obs;
  // List<CategoryModel> get getcategory => _categorymodel;
  var categoryservice = FoodCategoriesService();
  // var profilename;
  Future categoryController() async {
    try {
      var response = await categoryservice.foodCategoriesService();
      if (response != null) {
        friendsresponse.clear();
        friendsresponse.add(response);
        loadingindicator(false);
      } else {
        loadingindicator(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}



// import 'package:hotelseatbooking/all_packages.dart';

// import '../../model/foodcategories.dart';

// class FoodCategoriesController extends GetxController {
//   RxList<FoodCategoriesModel> friendsresponse = <FoodCategoriesModel>[].obs;
//   RxBool loadingindicator = true.obs;

//   void foodCategoriesApi(
//     String endPoint,
//   ) async {
//     try {
//       var responseData = await (ApiService().post(endpoint: endPoint));
//       var response = FoodCategoriesModel.fromJson(responseData?.data);
//       if (response.success == true) {
//         friendsresponse.add(response);
//         loadingindicator(false);
//         globalFunction.toast(response.message!.toString(), Colors.red);
//       } else {
//         loadingindicator(false);
//         globalFunction.toast(response.message!.toString(), Colors.red);
//       }
//     } catch (e) {
//       var array = e.toString().split(': ');
//       if (array.length > 1) {
//         var secondArray = array[1].split(' [');
//         if (secondArray.length > 1) {
//           globalFunction.toast(secondArray[0], Colors.red);
//         } else {
//           globalFunction.toast('something went wrong'.tr, Colors.red);
//         }
//       } else {
//         globalFunction.toast('something went wrong'.tr, Colors.red);
//       }
//     }
//     update(['foodcategories']);
//   }
// }
