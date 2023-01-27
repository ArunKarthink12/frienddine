import '../../../../all_packages.dart';
import '../../categories/widget.dart';

class OtpVerfication extends StatefulWidget {
  const OtpVerfication({Key? key}) : super(key: key);

  @override
  State<OtpVerfication> createState() => _OtpVerficationState();
}

class _OtpVerficationState extends State<OtpVerfication> {
  final formKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();
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
                      height: 50.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 13.0),
                      child: Text(
                        'Enter the Verfication Code',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 30.0.sp,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        textAlign: TextAlign.center,
                        'Enter the 4 digit number that we send\nto Mobile number',
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
                      alignment: Alignment.center,
                      child: Form(
                        key: formKey,
                        child: PinCodeTextField(
                          controller: otpController,
                          appContext: context,
                          pastedTextStyle: TextStyle(
                            color: Colors.green.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                          length: 4,
                          obscureText: true,
                          obscuringCharacter: '*',
                          obscuringWidget: const FlutterLogo(
                            size: 24,
                          ),
                          blinkWhenObscuring: true,
                          animationType: AnimationType.fade,
                          validator: (v) {
                            if (v!.length < 3) {
                              return "I'm from validator";
                            } else {
                              return null;
                            }
                          },
                          pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(25),
                              fieldHeight: 60.0.h,
                              fieldWidth: 40.0.w,
                              activeFillColor: Colors.white,
                              activeColor: Colors.white,
                              inactiveFillColor: Colors.white,
                              disabledColor: Colors.white,
                              errorBorderColor: Colors.white),
                          cursorColor: Colors.black,
                          animationDuration: const Duration(milliseconds: 300),
                          enableActiveFill: true,
                          keyboardType: TextInputType.number,
                          boxShadows: const [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Colors.black12,
                              blurRadius: 10,
                            )
                          ],
                          onChanged: (value) {},
                          beforeTextPaste: (text) {
                            return true;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(const Categories());
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
                            //   children: [
                            //     SizedBox(
                            //       width: 25.w,
                            //     ),
                            Text(
                          'Verfiy',
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0.sp,
                              color: Colors.white),
                        ),
                        // SizedBox(
                        //   width: 15.w,
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
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Recent OTP',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0.sp,
                            color: Colors.white),
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
