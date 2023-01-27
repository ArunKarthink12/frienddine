import '../../../../all_packages.dart';
import 'newpin.dart';

class ForgetPin extends StatefulWidget {
  const ForgetPin({Key? key}) : super(key: key);

  @override
  State<ForgetPin> createState() => _ForgetPinState();
}

class _ForgetPinState extends State<ForgetPin> {
  TextEditingController phController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            SizedBox(
              width: 1.sw,
              height: 1.sh,
              child: Row(
                children: [
                  Container(
                    height: 670.h,
                    width: 180.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                    ),
                    child:
                        Center(child: Image.asset('assets/images/login.png')),
                  ),
                  Container(
                    height: 670.h,
                    width: 180.w,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                //top: -20,
                right: 0.0,
                top: -110.0,
                child: SizedBox(
                    height: 400,
                    width: 250,
                    child: Image.asset('assets/images/dartpic.png'))),
            Positioned(
              left: 0.4.sw,
              top: 0.07.sw,
              child: SizedBox(
                // padding: EdgeInsets.only(left: 0.1.sw),
                width: 0.5.sw,
                height: 0.7.sh,
                child: Card(
                  color: const Color(0xff0155B7),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 90.h,
                      ),
                      // const Text(
                      //   'LOGO',
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 40,
                      //       color: Colors.white),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(top: 13.0),
                        child: Text(
                          'Forget mPin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0.sp,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Enter the mobile number associated with your account\nand well send an OTP with instruction to\nreset your password',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0.sp,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Container(
                        height: 0.08.sh,
                        width: 0.3.sw,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: TextField(
                            controller: phController,
                            keyboardType: TextInputType.number,
                            decoration:   InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(Icons.mobile_friendly),
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              labelText: 'Mobile Number',
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 50.h,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const NewPin());
                        },
                        child: Container(
                          width: 70.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff007CFF),
                              borderRadius: BorderRadius.circular(30)),
                          alignment: Alignment.center,
                          child:
                              //  Row(
                              // children: [
                              //   SizedBox(
                              //     width: 30.w,
                              //   ),
                              const Text(
                            'Send',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          // SizedBox(
                          //   width: 10.w,
                          // ),
                          // Expanded(
                          //   child: Container(
                          //     width: 40.w,
                          //     height: 50.h,
                          //     decoration: const BoxDecoration(
                          //       shape: BoxShape.circle,
                          //       color: Color(0xff0155B7),
                          //     ),
                          //     child: const Icon(
                          //       Icons.arrow_forward_ios,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          // )
                          //   ],
                          // ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
