// import 'dart:developer';

import 'package:friendsdine/extension/responsive.dart';
// import 'package:hotelseatbooking/extension/responsive.dart';

import '../../../../all_packages.dart';
// import '../../../../api_client/api_client.dart';
// import '../../../../constants/api_constants.dart';
import '../../../../credentials/categories/model/foodcategories.dart';
import '../../home/view/order/view/foodmenu.dart';
import '../controller/footcategories_controller.dart';
// import '../model/foodcategories.dart';
// import 'controller/footcategories_controller.dart';

class FoodCategories extends StatefulWidget {
  const FoodCategories({Key? key}) : super(key: key);

  @override
  State<FoodCategories> createState() => _FoodCategoriesState();
}

class _FoodCategoriesState extends State<FoodCategories> {
  FoodCategoriesModel? foodCategoriesResponse;

  FoodCategoriesController foodCategoriesController =
      Get.put((FoodCategoriesController()));

  @override
  void initState() {
    foodCategoriesController.categoryController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff007CFF),
      body: SafeArea(child: Obx(() {
        if (foodCategoriesController.loadingindicator.isTrue) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (foodCategoriesController.friendsresponse.isEmpty) {
          return Center(
            child: Text("There is no List in this Cata"),
          );
        } else {
          return SizedBox(
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10.0.sp),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          CustomPaint(
                            painter: ShapesPainter(),
                            child: SizedBox(
                              height: 40.0.hp,
                              child: SizedBox(
                                height: 20.0.hp,
                                child: Image.asset(
                                  "assets/images/pizza.png",
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0.hp,
                          ),
                          Center(
                            child: Text(
                              foodCategoriesController
                                  .friendsresponse[0].data[index].name,
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0.sp,
                                  color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Get.to(FoodMenu(
                                foodCategoriesController
                                    .friendsresponse[0].data[index].hashid,
                              ));
                            },
                            child: Container(
                              width: 20.0.wp,
                              height: 8.0.hp,
                              decoration: BoxDecoration(
                                  color: const Color(0xff007CFF),
                                  borderRadius: BorderRadius.circular(30)),
                              alignment: Alignment.center,
                              child: Text(
                                'Get in',
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 8.0.sp,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0.hp,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: .01.wp,
                    ),
                itemCount:
                    foodCategoriesController.friendsresponse[0].data.length),
          );
        }
      })),
    );
  }
}

const double _kCurveHeight = 35;

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - _kCurveHeight);
    p.relativeQuadraticBezierTo(
        size.width / 2, 2 * _kCurveHeight, size.width, 0);
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = const Color(0xff00C26A));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

const double _indo = 35;

class Indo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - _indo);
    p.relativeQuadraticBezierTo(size.width / 2, 2 * _indo, size.width, 0);
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = const Color(0xffEF8F15));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Cafe extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - _indo);
    p.relativeQuadraticBezierTo(size.width / 2, 2 * _indo, size.width, 0);
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = const Color(0xffD837F2));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Bakery extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - _indo);
    p.relativeQuadraticBezierTo(size.width / 2, 2 * _indo, size.width, 0);
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = const Color(0xff6D69F3));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
