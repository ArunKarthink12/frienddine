import '../all_packages.dart';

class GlobalFunction {
  dynamic toast(String text, color, {duration = 0}) {
    Get.snackbar(
      'Toast'.tr,
      ''.tr,
      duration: duration == 0
          ? const Duration(seconds: 3)
          : const Duration(milliseconds: 700),
      backgroundColor: color,
      titleText: Text(
        text.tr,
        style: const TextStyle(color: Colors.white),
      ),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}

GlobalFunction globalFunction = GlobalFunction();
