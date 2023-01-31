import 'package:ecommerceappfirebase/constants/consts.dart';
import 'package:ecommerceappfirebase/constants/lists.dart';
import 'package:ecommerceappfirebase/views/auth_screen/signup_screen.dart';
import 'package:ecommerceappfirebase/views/home_screen/home_screen.dart';
import 'package:ecommerceappfirebase/widgets_common/applogo_widget.dart';
import 'package:ecommerceappfirebase/widgets_common/bg_widget.dart';
import 'package:ecommerceappfirebase/widgets_common/custome_textfield.dart';
import 'package:ecommerceappfirebase/widgets_common/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          const Text('Log in to $appname',
              style: TextStyle(
                color: whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
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
                  customTextField(title: email, hintText: emailHint),
                  customTextField(title: password, hintText: passwordHint),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            forgotPassword,
                          ))),
                  const SizedBox(
                    height: 5,
                  ),
                  ourButton(
                      name: login,
                      onPressed: () {
                        Get.to(() => const Home());
                      },
                      color: redColor,
                      textcolor: whiteColor),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    createNewAccount,
                    style: TextStyle(color: fontGrey),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ourButton(
                      name: signup,
                      onPressed: () {
                        Get.to(() => const SignupScreen());
                      },
                      color: lightgolden,
                      textcolor: redColor),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    loginWith,
                    style: TextStyle(color: fontGrey),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child:
                                  Image.asset(socialIconList[index], width: 30),
                            )),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
