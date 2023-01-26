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
                    customTextField(title: retypePassowrd, hintText: retypePassowrd),
                      Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            forgotPassword,
                          ))),
                  ourButton(
                      name: signup,
                      onPressed: () {},
                      color: redColor,
                      textcolor: whiteColor),
                  const SizedBox(
                    height: 5,
                  ),
                
                Row(
                  children: [
                   Checkbox(
                    checkColor: redColor,
                    value: false, onChanged: (newValue){}),
                    SizedBox(width: 5,),
                     Expanded(
                       child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "I agree to the ",
                              style:
                                  TextStyle(color: fontGrey, fontFamily: bold)),
                          TextSpan(
                              text: termsAndConditions,
                              style:
                                  TextStyle(color: redColor, fontFamily: bold)),
                        TextSpan(
                                text: " & $privacyPolicy",
                                style: TextStyle(
                                    color: redColor, fontFamily: bold)),
                        ]),
                        
                        ),
                     )
                  ],
                ),

                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: alreadyHaveAnAccount,
                       
                        style: TextStyle(fontFamily: bold,
                            color: fontGrey,
                          )
                      ),
                       TextSpan(
                          text: login,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redColor,
                          ))
                    ]
                  )),
                )

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