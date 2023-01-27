import '../../../../all_packages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // static const themeColor = LinearGradient(
  //   colors: [Color(0xffFF62A5), Color(0xffFF8960)],
  //   begin: Alignment.bottomLeft,
  //   end: Alignment.topRight,
  // );
  List images = [
    'assets/images/food.png',
    'assets/images/foods.png',
    'assets/images/food.png',
    'assets/images/foods.png',
    'assets/images/food.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: 1.sw,
                  height: 0.3.sh,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                          colors: [Color(0xff4481EB), Color(0xff04BEFE)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight)),
                ),
                SizedBox(
                  height: 0.1.sh,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text(
                    'South India Hotels',
                    style: TextStyle(
                        color: Color(0xff007CFF),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.0,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 80.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 0.4.sw,
                            height: 150.0.h,
                            // margin: const EdgeInsets.all(30.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 6,
                                  color: const Color(0xffF4F4F4),
                                ),
                                // color: const Color(0xffF4F4F4),
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    images[index],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          Container(
                            color: const Color(0xffF4F4F4),
                            width: 0.4.sw,
                            height: 150.h,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Green Tree Restaurant',
                                    style: TextStyle(
                                        color: Color(0xff2C2929),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  const Text(
                                    'Johnson Road, T.Nagar',
                                    style: TextStyle(
                                        color: Color(0xffAAA8A8),
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  const Divider(color: Color(0xff696767)),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 4,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                          itemBuilder: (context, index) =>
                                              const Icon(
                                            Icons.star,
                                            color: Color(0xff007CFF),
                                            size: 10,
                                          ),
                                          onRatingUpdate: (rating) {},
                                        ),
                                        SizedBox(
                                          width: 10.h,
                                        ),
                                        const Text(
                                          '3.2',
                                          style: TextStyle(
                                              color: Color(0xff0D2253),
                                              fontSize: 25,
                                              fontWeight: FontWeight.normal),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )
              
              ],
            ),
            Positioned(
                top: 0.1.sh,
                right: 0.0,
                left: 3,
                child: SizedBox(
                    width: 0.9.w,
                    height: 0.3.sh,
                    child: Image.asset(
                      'assets/images/banner.png',
                    ))),
          ],
        ),
      ),
    ));
  }
}
