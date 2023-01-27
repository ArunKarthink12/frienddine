// import 'package:hotelseatbooking/extension/responsive.dart';

import 'package:friendsdine/extension/responsive.dart';

import '../../../../all_packages.dart';
import 'food_categories.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color(0xff007CFF),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              SizedBox(
                  height: 38.0.hp,
                  width: 35.0.wp,
                  child: Image.asset('assets/images/dartpic.png')),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 13),
                  child: Row(children: [
                    ///widget
                    typesofOrders(
                        image: 'assets/images/dining.png', title: "DINING"),
                    SizedBox(
                      width: 15.w,
                    ),
                    typesofOrders(
                        image: 'assets/images/takeaway.png', title: 'TAKEAWAY')
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget typesofOrders({String? image, String? title}) {
    return Container(
      width: 40.0.wp,
      height: 60.0.hp,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0.sp),
            child: Image.asset(
              image!,
              // 'assets/images/dining.png',
              height: 25.0.hp,
            ),
          ),
          Text(
            title!,
            // 'DINING',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontSize: 8.0.sp),
          ),
          SizedBox(
            height: 3.0.hp,
          ),
          InkWell(
            onTap: () {
              Get.to(FoodCategories());
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
          )
        ],
      ),
    );
  }
}
