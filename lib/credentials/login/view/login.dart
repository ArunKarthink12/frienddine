// import 'package:hotelseatbooking/api_client/api_client.dart';
// import 'package:hotelseatbooking/constants/api_constants.dart';
// import 'package:hotelseatbooking/extension/responsive.dart';
// import 'package:hotelseatbooking/src/ui/login/controller/login_controller.dart';
// import 'package:hotelseatbooking/src/ui/login/model/request/login_request.dart';

import 'package:friendsdine/extension/responsive.dart';
// import 'package:friendsdine/src/ui/login/controller/login_controller.dart';

import '../../../../../../all_packages.dart';
import '../controller/login_controller.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  LoginController loginController = Get.put(LoginController());

  // @override
  // void initState() {
  //   initializeApi();
  //   super.initState();
  // }

  // void initializeApi() async {
  //   globalVariable.apiClient = await ApiClient().getApiClient();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              SizedBox(
                // width: 1.sw,
                // height: 1.sh,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/login.png')),
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0.sp),
                            bottomLeft: Radius.circular(60.0.sp)),
                      ),
                      // child:
                      //     Center(child: Image.asset('assets/images/login.png')),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                      ),
                      alignment: Alignment.topRight,
                      child: SizedBox(
                          height: 38.0.hp,
                          width: 35.0.wp,
                          child: Image.asset('assets/images/dartpic.png')),
                    )
                  ],
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 2.8,
                top: MediaQuery.of(context).size.height / 9,
                child: SizedBox(
                  width: 50.0.wp,
                  height: 70.0.hp,
                  child: Card(
                    color: const Color(0xff0155B7),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 6.0.hp,
                        ),
                        SizedBox(
                          child: Text(
                            'LOGO',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.0.sp,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        SizedBox(
                          child: Text(
                            'Login to your account',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 6.7.sp,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 4.0.hp,
                        ),
                        Container(
                          height: 8.0.hp,
                          width: 30.0.wp,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35.0.sp)),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0.sp),
                            child: TextField(
                              controller: loginController.mobileController,
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
                          height: 3.0.hp,
                        ),
                        Container(
                          height: 8.0.hp,
                          width: 30.0.wp,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35.0.sp)),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0.sp),
                            child: TextField(
                              controller: loginController.mPinController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                icon: Icon(Icons.key),
                                labelText: 'mPin',
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 80.0.sp, top: 5.0.sp),
                            child: Text(
                              'Forgot mPin?',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 6.0.sp,
                                  color: Colors.white),
                            ),
                          ),
                          onPressed: () {
                            showBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container();
                              },
                            );
                            // Get.to(const ForgetPin());
                          },
                        ),
                        SizedBox(height: 2.0.hp),
                        InkWell(
                          onTap: () async {
                            await loginController.loginController();
                          },
                          child: Container(
                            width: 20.0.wp,
                            height: 7.0.hp,
                            // constraints: BoxConstraints(
                            //     maxHeight: 50.h, minHeight: 30.h),
                            decoration: BoxDecoration(
                                color: const Color(0xff007CFF),
                                borderRadius: BorderRadius.circular(15.0.sp)),
                            alignment: Alignment.center,
                            child: Text(
                              'Login',
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
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
