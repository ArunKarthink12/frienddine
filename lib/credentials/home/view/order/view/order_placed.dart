import '../../../../../../all_packages.dart';

class OrderPlaced extends StatefulWidget {
  const OrderPlaced({Key? key}) : super(key: key);

  @override
  State<OrderPlaced> createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  TextEditingController phOrderController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        width: 1.sw,
        height: 0.3.sh,
        decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
                colors: [Color(0xff4481EB), Color(0xff04BEFE)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          Row(
            children: [
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
                width: 0.5.sw,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25.0, top: 10),
                child: Text(
                  'Total No: 12',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 0.3.sw,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25.0, top: 10),
                child: Text(
                  'Sakthy traders, Gandhi Nagar, Coimbatore',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal),
                ),
              ),
              SizedBox(
                width: 0.4.sw,
              ),
              SizedBox(
                width: 15.w,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Container(
                  height: 40.h,
                  width: 0.2.sw,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.file_download,
                            color: Colors.red,
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Price Tocken',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
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
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
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
            width: 0.5.sw,
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
                const Padding(
                  padding: EdgeInsets.only(left: 35.0, top: 10),
                  child: Text(
                    'Chicken Briyani',
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
                        padding: const EdgeInsets.only(left: 35.0, top: 10),
                        child: RichText(
                          text: const TextSpan(
                            text: '1 X ',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                            children: [
                              TextSpan(
                                text: '\$ 145',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 35.0, top: 10),
                  child: Text(
                    'Additional Dish',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Container(
                              width: 0.1.sw,
                              height: 0.1.sh,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    width: 0.1.sw,
                                    height: 0.1.sh,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: Colors.white, width: 3),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/briyani.png'),
                                            fit: BoxFit.fill)),
                                  ),
                                  Container(
                                      height: 40.h,
                                      width: 0.1.sw,
                                      color: const Color(0xffF4F4F4),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              'Plain Briyani',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 8.0, top: 10),
                                                child: Text(
                                                  '\$95',
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FontStyle.normal),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Container(
                                                width: 15.w,
                                                height: 15.h,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.blue,
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Row(children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.0),
                                                    child: Text(
                                                      'Add    +',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff606060),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FontStyle.normal),
                                                    ),
                                                  ),
                                                  // Flexible(
                                                  //   child: Padding(
                                                  //     padding:
                                                  //         const EdgeInsets.only(
                                                  //             bottom: 25.0),
                                                  //     child: IconButton(
                                                  //         onPressed: () {},
                                                  //         icon: const Icon(
                                                  //           Entypo.plus,
                                                  //           color: Color(
                                                  //               0xff606060),
                                                  //           size: 15,
                                                  //         )),
                                                  //   ),
                                                  // ),
                                                ]),
                                              ),
                                            ],
                                          )
                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
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
                  padding: EdgeInsets.only(left: 35.0, top: 18, bottom: 8.0),
                  child: Text(
                    'Your Order',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                const Divider(color: Colors.grey, thickness: 2),
                SizedBox(
                  height: 5.h,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 35.0),
                  child: Text(
                    'Chicken Briyani',
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
                        padding: const EdgeInsets.only(left: 35.0, top: 10),
                        child: RichText(
                          text: const TextSpan(
                            text: '1 X ',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                            children: [
                              TextSpan(
                                text: '\$ 145',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 0.3.sw,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 35.0, top: 10),
                      child: Text(
                        '\$145',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 0.4.sw,
                  height: 150.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffD7E0FA)),
                      borderRadius: BorderRadius.circular(15)),
                  child: Card(
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 8),
                          child: Text(
                            'Order Summary',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0, top: 8),
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
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0, top: 8),
                              child: Text(
                                '145.00',
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
                              padding: EdgeInsets.only(left: 8.0, top: 8),
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
                              padding: EdgeInsets.only(left: 8.0, top: 8),
                              child: Text(
                                '32.75',
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
                              padding: EdgeInsets.only(left: 8.0, top: 8),
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
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 8),
                              child: Text(
                                '\$ 177.00',
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
                  padding: EdgeInsets.only(left: 20.0, top: 10),
                  child: Text(
                    'Order Details',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 0.4.sw,
                  height: 150.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffD7E0FA)),
                      borderRadius: BorderRadius.circular(15)),
                  child: Card(
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: RichText(
                            text: const TextSpan(
                              text: 'Order Number:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.normal),
                              children: [
                                TextSpan(
                                  text: '3579403376',
                                  style: TextStyle(
                                      color: Color(0xff7C7B7B),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: RichText(
                            text: const TextSpan(
                              text: 'Payment: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.normal),
                              children: [
                                TextSpan(
                                  text: ' Google Pay',
                                  style: TextStyle(
                                      color: Color(0xff7C7B7B),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: RichText(
                            text: const TextSpan(
                              text: 'Date: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.normal),
                              children: [
                                TextSpan(
                                  text: 'April 07, 2022 | 10.00pm',
                                  style: TextStyle(
                                      color: Color(0xff7C7B7B),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: RichText(
                            text: const TextSpan(
                              text: 'Contact No : ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.normal),
                              children: [
                                TextSpan(
                                  text: ' xxxxxxxxxx',
                                  style: TextStyle(
                                      color: Color(0xff7C7B7B),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    ])));
  }
}
