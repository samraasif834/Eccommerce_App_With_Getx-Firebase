import 'package:ecommerceappfirebase/constants/consts.dart';
import 'package:ecommerceappfirebase/views/auth_screen/login_screen.dart';
import 'package:ecommerceappfirebase/widgets_common/applogo_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
// creating method for screen changing

  changeScreen() async {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: redColor,
        body: Center(
            child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  icSplashBg,
                  width: 300,
                )),
            const SizedBox(
              height: 20,
            ),
            applogo_widget(),
            const SizedBox(
              height: 10,
            ),
            const Text(appname,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 22,
                  fontFamily: bold,
                )),
            const SizedBox(
              height: 5,
            ),
            const Text(
              appversion,
              style: TextStyle(color: whiteColor),
            ),
            const Spacer(),
            const Text(credits,
                style: TextStyle(color: whiteColor, fontFamily: semibold)),
            const SizedBox(
              height: 30,
            )
          ],
        )));
  }
}
