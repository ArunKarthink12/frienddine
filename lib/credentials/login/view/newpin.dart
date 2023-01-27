import 'package:friendsdine/src/ui/login/view/otp.dart';

import '../../../../all_packages.dart';

class NewPin extends StatefulWidget {
  const NewPin({Key? key}) : super(key: key);

  @override
  State<NewPin> createState() => _NewPinState();
}

class _NewPinState extends State<NewPin> {
  TextEditingController newPinController = TextEditingController();
  TextEditingController confirmPinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: Center(child: Image.asset('assets/images/login.png')),
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
              width: 0.5.sw,
              height: 0.7.sh,
              child: Card(
                color: const Color(0xff0155B7),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      'Create New mPin',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0.sp,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 13.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Your new password must be different\nfrom previously used passwords.',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0.sp,
                              color: Colors.white),
                        ),
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
                          controller: newPinController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.key),
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            labelText: 'Create New mPin',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
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
                          controller: confirmPinController,
                          keyboardType: TextInputType.number,
                          decoration:   InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            icon: Icon(Icons.key),
                            labelText: 'Confirm mPin',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(const OtpVerfication());
                      },
                      child: Container(
                        width: 75.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: const Color(0xff007CFF),
                            borderRadius: BorderRadius.circular(30)),
                        alignment: Alignment.center,
                        child:
                            // Row(
                            //   children: [
                            // SizedBox(
                            //   width: 25.w,
                            // ),
                            const Text(
                          'Confirm',
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        // SizedBox(
                        //   width: 15.w,
                        // ),
                        // Expanded(
                        //   child: Container(
                        //     width: 50.w,
                        //     height: 60.h,
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
    );
  }
}
