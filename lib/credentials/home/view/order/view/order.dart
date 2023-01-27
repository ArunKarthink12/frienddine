import '../../../../../../all_packages.dart';
import '../../../../../../global/global_function.dart';
import '../controller/foodordercontroller.dart';
// import '../model/foodmenumodel.dart';
// import '../model/foodorderdetailsmodel.dart';

class Order extends StatefulWidget {
  var data;
  String name;
  Order(this.data,this.name);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  TextEditingController phOrderController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  var foodMenuController = Get.put(FoodOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: GetBuilder<FoodOrderController>(
                id: 'order',
                builder: (foodorder) {
                  return Column(children: [
                    Container(
                      width: 1.sw,
                      height: 0.3.sh,
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
                              height: 50.h,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Text(
                                'Hotel Annalakshmi',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.normal),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 25.0, top: 10),
                              child: Text(
                                'Chettinad,South Indian, Chinese',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.normal),
                              ),
                            ),
                            SizedBox(
                              width: 0.3.sw,
                            ),
                            // const Padding(
                            //   padding: EdgeInsets.only(left: 25.0, top: 10),
                            //   child: Text(
                            //     'Sakthy traders, Gandhi Nagar, Coimbatore',
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontSize: 20,
                            //         fontWeight: FontWeight.normal,
                            //         fontStyle: FontStyle.normal),
                            //   ),
                            // ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: RatingBar.builder(
                                    initialRating: 4,
                                    minRating: 1,
                                    itemSize: 20,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 5,
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
                    Row(
                      children: [
                        Container(
                          width: 0.4.sw,
                          height: 1.sh,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 35.0, top: 10),
                                child: Text(
                                  'Your order',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                               Padding(
                                padding: EdgeInsets.only(left: 35.0, top: 10),
                                child: Text(
                               widget.  name,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 35.0, top: 10),
                                    child: Text(
                                      foodorder.totalPrice.toString(),
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 60.w,
                                  ),
                                  Container(
                                    width: 45.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff00A8FF),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: Row(children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
                                        child: IconButton(
                                            onPressed: () async {
                                              var price = widget.data.price;
                                              int quantity = 1;
                                              setState(() {
                                                quantity = 1;
                                              });

                                              print('price------');
                                              print(price);
                                              await foodMenuController
                                                  .FoodOrderMinus(
                                                      quantity, price);
                                            },
                                            icon: const Icon(Icons.favorite,
                                                color: Colors.red)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2.0),
                                        child: Text(
                                          foodorder.quantitys.toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 6.0),
                                        child: IconButton(
                                            onPressed: () async {
                                              var price = widget.data.price;
                                              int quantity = 1;
                                              setState(() {
                                                quantity = 1;
                                              });

                                              print('price------');
                                              print(price);
                                              await foodMenuController
                                                  .FoodOrder(quantity, price);
                                            },
                                            icon: const Icon(Icons.favorite,
                                                color: Colors.red)),
                                      ),
                                    ]),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              const Divider(
                                color: Colors.grey,
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(left: 35.0, top: 10),
                              //   child: Text(
                              //     'Additional Dish',
                              //     style: TextStyle(
                              //         color: Colors.black,
                              //         fontSize: 25,
                              //         fontWeight: FontWeight.normal,
                              //         fontStyle: FontStyle.normal),
                              //   ),
                              // ),
                              // SizedBox(
                              //   height: 10.h,
                              // ),
                              // Expanded(
                              //   child: ListView.builder(
                              //       shrinkWrap: true,
                              //       scrollDirection: Axis.horizontal,
                              //       itemCount: 5,
                              //       itemBuilder: (context, index) {
                              //         return Expanded(
                              //           child: Padding(
                              //             padding: const EdgeInsets.only(left: 12.0),
                              //             child: Container(
                              //               width: 0.1.sw,
                              //               height: 0.1.sh,
                              //               color: Colors.white,
                              //               child: Column(
                              //                 children: [
                              //                   Container(
                              //                     width: 0.1.sw,
                              //                     height: 0.1.sh,
                              //                     decoration: BoxDecoration(
                              //                         borderRadius: BorderRadius.circular(15),
                              //                         border: Border.all(
                              //                             color: Colors.white, width: 3),
                              //                         image: const DecorationImage(
                              //                             image: AssetImage(
                              //                                 'assets/images/briyani.png'),
                              //                             fit: BoxFit.fill)),
                              //                   ),
                              //                   Container(
                              //                       height: 40.h,
                              //                       width: 0.1.sw,
                              //                       color: const Color(0xffF4F4F4),
                              //                       child: Column(
                              //                         crossAxisAlignment:
                              //                             CrossAxisAlignment.start,
                              //                         children: [
                              //                           const Padding(
                              //                             padding: EdgeInsets.only(left: 8.0),
                              //                             child: Text(
                              //                               'Plain Briyani',
                              //                               style: TextStyle(
                              //                                   color: Colors.black,
                              //                                   fontSize: 12,
                              //                                   fontWeight: FontWeight.bold,
                              //                                   fontStyle: FontStyle.normal),
                              //                             ),
                              //                           ),
                              //                           Row(
                              //                             children: [
                              //                               const Padding(
                              //                                 padding: EdgeInsets.only(
                              //                                     left: 8.0, top: 10),
                              //                                 child: Text(
                              //                                   '\$95',
                              //                                   style: TextStyle(
                              //                                       color: Colors.blue,
                              //                                       fontSize: 15,
                              //                                       fontWeight:
                              //                                           FontWeight.bold,
                              //                                       fontStyle:
                              //                                           FontStyle.normal),
                              //                                 ),
                              //                               ),
                              //                               SizedBox(
                              //                                 width: 10.w,
                              //                               ),
                              //                               Container(
                              //                                 width: 15.w,
                              //                                 height: 15.h,
                              //                                 decoration: BoxDecoration(
                              //                                     border: Border.all(
                              //                                         color: Colors.blue,
                              //                                         width: 1),
                              //                                     borderRadius:
                              //                                         BorderRadius.circular(
                              //                                             20)),
                              //                                 child: Row(children: const [
                              //                                   Padding(
                              //                                     padding: EdgeInsets.only(
                              //                                         left: 4.0),
                              //                                     child: Text(
                              //                                       'Add    +',
                              //                                       style: TextStyle(
                              //                                           color:
                              //                                               Color(0xff606060),
                              //                                           fontSize: 12,
                              //                                           fontWeight:
                              //                                               FontWeight.normal,
                              //                                           fontStyle:
                              //                                               FontStyle.normal),
                              //                                     ),
                              //                                   ),
                              //                                   // Flexible(
                              //                                   //   child: Padding(
                              //                                   //     padding:
                              //                                   //         const EdgeInsets.only(
                              //                                   //             bottom: 25.0),
                              //                                   //     child: IconButton(
                              //                                   //         onPressed: () {},
                              //                                   //         icon: const Icon(
                              //                                   //           Entypo.plus,
                              //                                   //           color: Color(
                              //                                   //               0xff606060),
                              //                                   //           size: 15,
                              //                                   //         )),
                              //                                   //   ),
                              //                                   // ),
                              //                                 ]),
                              //                               ),
                              //                             ],
                              //                           )
                              //                         ],
                              //                       ))
                              //                 ],
                              //               ),
                              //             ),
                              //           ),
                              //         );
                              //       }),
                              // )
                            ],
                          ),
                        ),
                        const VerticalDivider(
                          color: Color(0xff9A9A9A),
                        ),
                        Container(
                          height: 1.sh,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 35.0, top: 10),
                                child: Text(
                                  'Order Summery',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                              Container(
                                width: 0.5.sw,
                                height: 200.h,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xffD7E0FA)),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Card(
                                  elevation: 2,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 6.0, top: 8),
                                            child: Text(
                                              'Item 1',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 100.w,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 6.0, top: 8),
                                            child: Text(
                                              foodorder.totalPrice.toString(),
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.0, top: 8),
                                            child: Text(
                                              'Taxes & Charges',
                                              style: TextStyle(
                                                  color: Color(0xff7C7B7B),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 80.w,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.0, top: 8),
                                            child: Text(
                                              '0.0',
                                              style: TextStyle(
                                                  color: Color(0xff7C7B7B),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.0, top: 8),
                                            child: Text(
                                              'Packing Charges',
                                              style: TextStyle(
                                                  color: Color(0xff7C7B7B),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 80.w,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.0, top: 8),
                                            child: Text(
                                              '0.00',
                                              style: TextStyle(
                                                  color: Color(0xff7C7B7B),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      const Divider(
                                        color: Color(0xffDDDDDD),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.0, top: 8),
                                            child: Text(
                                              'Total Amount',
                                              style: TextStyle(
                                                  color: Color(0xff7C7B7B),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 80.w,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.0, top: 8),
                                            child: Text(
                                              foodorder.totalPrice.toString(),
                                              style: TextStyle(
                                                  color: Color(0xff7C7B7B),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Color(0xffDDDDDD),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 35.0, top: 10),
                                child: Text(
                                  'Your Details',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 35.0, top: 10, right: 6),
                                  child: RichText(
                                    text: const TextSpan(
                                      text: 'Mobile Number',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                      children: [
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(height: 8.h),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 0.4.sw,
                                  height: 0.1.sh,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 1.w),
                                      borderRadius: BorderRadius.circular(35)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: TextField(
                                      controller: phOrderController,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        labelText: 'Mobile Number *',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 35.0, top: 10, right: 6),
                                  child: RichText(
                                    text: const TextSpan(
                                      text: 'Name',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                      children: [
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(height: 8.h),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 0.4.sw,
                                  height: 0.1.sh,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 1.w),
                                      borderRadius: BorderRadius.circular(35)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: TextField(
                                      controller: nameController,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        labelText: 'Name *',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Row(
                                children: [
                                  Container(
                                      height: 85.h,
                                      width: 75.w,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff00A8FF),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20.0, top: 10),
                                                child: Text(
                                                  'Pay Using',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FontStyle.normal),
                                                ),
                                              ),
                                              SizedBox(width: 5.w),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0),
                                                child: IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      Icons.favorite,
                                                      color: Colors.red,
                                                      size: 20,
                                                    )),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              right: 28.0,
                                            ),
                                            child: Image.asset(
                                              'assets/images/gpay.png',
                                              height: 30.h,
                                              width: 45.w,
                                            ),
                                          )
                                        ],
                                      )),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Container(
                                    height: 85.h,
                                    width: 95.w,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff00A8FF),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.0, top: 10),
                                          child: Text(
                                            'Total : ${foodorder.totalPrice.toString()}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.normal,
                                                fontStyle: FontStyle.normal),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6.w,
                                        ),
                                        Container(
                                          height: 40.h,
                                          width: 40.w,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Row(children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.0),
                                              child: Text(
                                                'Order',
                                                style: TextStyle(
                                                    color: Color(0xff00A8FF),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FontStyle.normal),
                                              ),
                                            ),
                                            IconButton(
                                                onPressed: () async {
                                                  if (nameController
                                                          .text.isNotEmpty &&
                                                      phOrderController
                                                          .text.isNotEmpty) {
                                                    final prefs =
                                                        await SharedPreferences
                                                            .getInstance();
                                                    var vendor_id = await prefs
                                                        .getString('token');
                                                    var data = {
                                                      "vendor_id": vendor_id,
                                                      "name":
                                                          nameController.text,
                                                      "mobile":
                                                          phOrderController
                                                              .text,
                                                      "data": [
                                                        {
                                                          "name":
                                                              widget.data.name,
                                                          "price": foodorder
                                                              .totalPrice
                                                              .toString(),
                                                          "qty": foodorder
                                                              .quantitys
                                                        },
                                                      ]
                                                    };
                                                    foodMenuController
                                                        .foodOrderApi(data,
                                                            'createorder');
                                                  } else {
                                                    globalFunction.toast(
                                                        'please enter above the field',
                                                        Colors.red);
                                                  }
                                                },
                                                icon: const Icon(
                                                  Icons.arrow_forward_ios,
                                                  color:
                                                      const Color(0xff00A8FF),
                                                ))
                                          ]),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ]);
                })));
  }
}
