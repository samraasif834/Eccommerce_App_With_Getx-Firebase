import 'package:ecommerceappfirebase/constants/consts.dart';

Widget ourButton({String? name, VoidCallback? onPressed,color ,textcolor}) {
  return ElevatedButton(
    style: ButtonStyle(
     minimumSize: MaterialStateProperty.all(Size(300, 30)),
      backgroundColor: MaterialStateProperty.all(color),
      // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //   RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10.0),
      //   ),
      // ),
    ),
   
      onPressed: () {
        onPressed!();
      },
      child: Text(name!,style: TextStyle(
        color: textcolor,
        fontFamily: bold,
       
      ),),
      );
}
