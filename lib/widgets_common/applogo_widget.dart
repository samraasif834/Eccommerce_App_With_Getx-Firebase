import 'package:ecommerceappfirebase/constants/consts.dart';

// ignore: non_constant_identifier_names
Widget applogo_widget() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
       width: 77,
      height: 77,
     
      decoration: BoxDecoration(
         color: whiteColor,
          border: Border.all(
            
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      
      child: Image.asset(
        icAppLogo,
        width: 55,
        height: 55,
      ),
    ),
  );
}