import 'package:ecommerceappfirebase/constants/colors.dart';
import 'package:ecommerceappfirebase/constants/consts.dart';
import 'package:ecommerceappfirebase/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:redColor,
      body:Center(
        child:Column(
          children: [
           Align(
            alignment: Alignment.topLeft,
            child: Image.asset(icSplashBg,width: 300,)),
            const SizedBox(height: 20,),
            applogo_widget(),
            const SizedBox(height: 10,),
            const Text(appname,
            style: TextStyle(
           color: whiteColor ,
              fontSize: 22,
              fontFamily: bold,
             
            )),
          ],
        )
      )
    );
  }
}