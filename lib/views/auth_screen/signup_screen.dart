import 'package:ecommerceappfirebase/constants/consts.dart';
import 'package:ecommerceappfirebase/widgets_common/applogo_widget.dart';
import 'package:get/get.dart';

import '../../constants/lists.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custome_textfield.dart';
import '../../widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isfalse = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;

    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(children: [
          SizedBox(height: height * 0.1),
          applogo_widget(),
          const SizedBox(height: 10),
          const SizedBox(height: 15),
          Container(
            width: width * 0.4,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
                color: whiteColor,
                border: Border.all(color: Colors.transparent),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  customTextField(title: name, hintText: nameHint),
                  customTextField(title: email, hintText: emailHint),
                  // Align(
                  //     alignment: Alignment.centerRight,
                  //     child: TextButton(
                  //         onPressed: () {},
                  //         child: const Text(
                  //           resgisterWithPhoneNumber,
                  //         ))),
                  const SizedBox(
                    height: 5,
                  ),
                  customTextField(title: password, hintText: passwordHint),
                  customTextField(
                      title: retypePassowrd, hintText: retypePassowrd),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            forgotPassword,
                          ))),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.red,
                          checkColor: whiteColor,
                          value: isfalse,
                          onChanged: (newValue) {
                            setState(() {
                              isfalse = newValue!;
                            });
                          }),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                    color: fontGrey, fontFamily: regular)),
                            TextSpan(
                                text: termsAndConditions,
                                style: TextStyle(
                                    color: redColor, fontFamily: regular)),
                            TextSpan(
                                text: " &  ",
                                style: TextStyle(
                                    color: fontGrey, fontFamily: regular)),
                            TextSpan(
                                text: "$privacyPolicy",
                                style: TextStyle(
                                    color: redColor, fontFamily: regular)),
                          ]),
                        ),
                      )
                    ],
                  ),
                  ourButton(
                      name: signup,
                      onPressed: () {},
                      color: isfalse ? redColor : lightGrey,
                      textcolor: whiteColor),
                  const SizedBox(
                    height: 5,
                  ),

                  // Row(
                  //   children: [
                  //    Checkbox(
                  //     checkColor: redColor,
                  //     value: isfalse, onChanged: (newValue){
                  //       setState(() {
                  //           isfalse = newValue!;
                  //       });

                  //     }),
                  //     const SizedBox(width: 5,),
                  //      Expanded(
                  //        child: RichText(
                  //             text: const TextSpan(children: [
                  //           TextSpan(
                  //               text: "I agree to the ",
                  //               style:
                  //                   TextStyle(color: fontGrey, fontFamily: regular)),
                  //           TextSpan(
                  //               text: termsAndConditions,
                  //               style:
                  //                   TextStyle(color: redColor, fontFamily: regular)),
                  //                    TextSpan(
                  //                 text: " &  ",
                  //                 style: TextStyle(
                  //                     color: fontGrey, fontFamily: regular)),
                  //         TextSpan(
                  //                 text: "$privacyPolicy",
                  //                 style: TextStyle(
                  //                     color: redColor, fontFamily: regular)),
                  //         ]),

                  //         ),
                  //      )
                  //   ],
                  // ),

                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text(
                       alreadyHaveAnAccount,
                        style: TextStyle(color: fontGrey,),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text(
                            login,
                            style: TextStyle(
                                color: redColor,),
                          ))
                    ],
                  ),

                  // SizedBox(width: 10,),
                ],
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
