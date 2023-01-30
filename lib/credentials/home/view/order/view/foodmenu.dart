import 'dart:developer';

import 'package:flutter_switch/flutter_switch.dart';
import 'package:friendsdine/extension/responsive.dart';

import '../../../../../../all_packages.dart';
// import '../../../../../../api_client/api_client.dart';
import '../../../../login/controller/login_controller.dart';
import '../controller/foodmenucontroller.dart';
// import '../model/foodmenumodel.dart';
import 'order.dart';

class FoodMenu extends StatefulWidget {
  var hashid;
  FoodMenu(this.hashid);

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  FoodMenuController foodMenuController = Get.put(FoodMenuController());
  LoginController loginController = Get.put(LoginController());
  String imageUrl = 'https://friendsdine.com/app-dev/public/uploads/products/';

  @override
  void initState() {
    log(loginController.token.toString());
    foodMenuController.foodMenuApicontroller(
        widget.hashid.toString(), loginController.token.toString());
    // initializeApi();
    super.initState();
  }

  // void initializeApi() async {
  //   globalVariable.apiClient = await ApiClient().getApiClient();
  //   makeServiceCall();
  // }
  // Future<void> makeServiceCall() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   var token = prefs.get('token');
  //   print('token--------$token');
  //   print(widget.hashid.toString());
  //   print(token.toString());
  //   var data = {
  //     'category': widget.hashid.toString(),
  //     'vendor': token.toString()
  //   };
  //   foodMenuController.foodMenuApi(data, 'productlist');
  // }

  TextEditingController searchController = TextEditingController();
  bool isSwitchedveg = false;
  bool isSwitchednonveg = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: SizedBox(
                  height: 150.0.hp,
                  // 2.sh,
                  child: Column(children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // 1.sw,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(
                              colors: [Color(0xff4481EB), Color(0xff04BEFE)],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 2.0.hp,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0.sp),
                                  child: RichText(
                                      text: TextSpan(
                                          text: 'Hotel Annalakshmi',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0.sp,
                                              fontWeight: FontWeight.normal,
                                              fontStyle: FontStyle.normal),
                                          children: [
                                        TextSpan(
                                            text:
                                                '\nChettinad,South Indian, Chinese',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8.0.sp,
                                                fontWeight: FontWeight.normal,
                                                fontStyle: FontStyle.normal)),
                                        TextSpan(
                                          text:
                                              ' \nSakthy traders, Gandhi Nagar, Coimbatore',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 6.0.sp,
                                              fontWeight: FontWeight.normal,
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ])),
                                ),
                                Expanded(child: SizedBox()),
                                Column(
                                  children: [
                                    Container(
                                      height: 50.h,
                                      width: 138.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.white),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            flex: 7,
                                            child: TextField(
                                              controller: searchController,
                                              keyboardType: TextInputType.text,
                                              decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                labelText: ' Search menu',
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Container(
                                              width: 18.0.sp,
                                              height: 18.0.sp,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff00A8FF),
                                              ),
                                              child: Icon(
                                                Icons.search,
                                                color: Colors.white,
                                                size: 10.0.sp,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: FlutterSwitch(
                                            value: isSwitchedveg,
                                            activeColor: Colors.green,
                                            toggleColor: Colors.blue,
                                            inactiveColor: Colors.white,
                                            onToggle: (val) {
                                              setState(() {
                                                isSwitchedveg = true;
                                                isSwitchednonveg = false;
                                              });
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 3.0.sp, top: 4.0.sp),
                                          child: Text(
                                            'Veg',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8.0.sp,
                                                fontWeight: FontWeight.normal,
                                                fontStyle: FontStyle.normal),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: FlutterSwitch(
                                            value: isSwitchednonveg,
                                            toggleColor: Colors.blue,
                                            inactiveColor: Colors.white,
                                            activeColor: Colors.green,
                                            onToggle: (val) {
                                              setState(() {
                                                isSwitchednonveg = true;
                                                isSwitchedveg = false;
                                              });
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 3.0.sp, top: 4.0.sp),
                                          child: Text(
                                            'Non-Veg',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8.0.sp,
                                                fontWeight: FontWeight.normal,
                                                fontStyle: FontStyle.normal),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 1.2.w,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 0.2.sw,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0.sp),
                                  child: RatingBar.builder(
                                    initialRating: 4,
                                    minRating: 1,
                                    itemSize: 8.0.sp,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 5.0.sp,
                                    ),
                                    onRatingUpdate: (rating) {},
                                  ),
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                const Text(
                                  '3.2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal),
                                ),
                              ],
                            ),
                          ]),
                    ),
                    Container(
                        height: 70.0.hp,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/background.png'),
                                fit: BoxFit.fill)),
                        child: Stack(children: [
                          Positioned(
                              right: 4.0.sp,
                              top: 10.0.sp,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                    height: 40.0.hp,
                                    width: 55.0.wp,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 4),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/bargerbanner.png')))),
                              )),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 8.0.hp,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0.sp),
                                  child: Text(
                                    'The Fastest',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0.sp,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0.sp,
                                  ),
                                  child: Text(
                                    'Delivery',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0.sp,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0.sp,
                                  ),
                                  child: RichText(
                                    overflow: TextOverflow.clip,
                                    softWrap: true,
                                    text: TextSpan(
                                      text: 'in ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0.sp,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Your Table',
                                          style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 18.0.sp,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 9.0.hp,
                                ),
                                const Center(
                                  child: Text(
                                    'Choose Your Menu',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                          
                              ])
                        ])),
                    Obx(() {
                      if (foodMenuController.loadingindicator.isFalse) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (foodMenuController.friendsresponse.isEmpty) {
                        return Center(
                          child: Text("There is no menu"),
                        );
                      } else {
                        return SizedBox(
                          child: GridView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: foodMenuController
                                .friendsresponse[0].data.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 2.0,
                                    crossAxisSpacing: 20.0,
                                    mainAxisSpacing: 80.0),
                            itemBuilder: (BuildContext context, int index) {
                              var data = foodMenuController
                                  .friendsresponse[0].data[index];
                              return
                                  // foodMenuController
                                  //             .friendsresponse[
                                  //                 0]
                                  //             .data
                                  //             .isNotEmpty &&
                                  //         foodMenuController
                                  //                 .friendsresponse[
                                  //                     0]
                                  //                 .data
                                  //                 .length !=
                                  //             0
                                  // ?
                                  Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // data![index].image! !=
                                  //         null
                                  //     ?
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 0.8.sw,
                                      height: 0.2.sh,
                                      // margin: const EdgeInsets.all(30.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 6,
                                            color: const Color(0xffF4F4F4),
                                          ),
                                          // color: const Color(0xffF4F4F4),
                                          shape: BoxShape.rectangle,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              imageUrl + data.image,
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                  // : Container(),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Container(
                                    color: const Color(0xffF4F4F4),
                                    width: 0.8.sw,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 8.0),
                                                child: Text(
                                                  data.name,
                                                  style: TextStyle(
                                                      color: Color(0xff2C2929),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FontStyle.normal),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 80.w,
                                                height: 15.h,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Get.to(
                                                      Order(data, data.name));
                                                },
                                                child: Container(
                                                  height: 25.h,
                                                  width: 30.w,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.blue),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Add',
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle: FontStyle
                                                                .normal),
                                                      ),
                                                      Icon(Icons.add,
                                                          color: Colors.blue),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Rs:${data.price.toString()}',
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.normal),
                                          ),
                                          // Row(
                                          //   mainAxisAlignment:
                                          //       MainAxisAlignment
                                          //           .start,
                                          //   children: [
                                          //     RatingBar.builder(
                                          //       initialRating: 4,
                                          //       minRating: 1,
                                          //       direction: Axis
                                          //           .horizontal,
                                          //       allowHalfRating:
                                          //           true,
                                          //       itemCount: 4,
                                          //       itemBuilder: (context,
                                          //               index) =>
                                          //           const Icon(
                                          //         Icons.star,
                                          //         color: Color(
                                          //             0xff007CFF),
                                          //         size: 1,
                                          //       ),
                                          //       onRatingUpdate:
                                          //           (rating) {},
                                          //     ),
                                          //     SizedBox(
                                          //       width: 4.h,
                                          //     ),
                                          //     const Text(
                                          //       '3.2',
                                          //       style: TextStyle(
                                          //           color: Color(
                                          //               0xff0D2253),
                                          //           fontSize: 18,
                                          //           fontWeight:
                                          //               FontWeight
                                          //                   .normal),
                                          //     )
                                          //   ],
                                          // ),
                                          // SizedBox(
                                          //   height: 10.h,
                                          // )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                              // : Container();
                            },
                          ),
                        );
                      }
                    })
                  ])))),
    );
  }
}
