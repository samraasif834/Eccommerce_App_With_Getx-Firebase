import 'package:ecommerceappfirebase/constants/consts.dart';

Widget ourButton({String? name, VoidCallback? onPressed,Color? color ,textcolor}) {
  return ElevatedButton(
    style: ButtonStyle(
     minimumSize: MaterialStateProperty.all(Size(300, 30)),
      backgroundColor: MaterialStateProperty.all(color),
    ),
   
      onPressed: 
       onPressed,
      
      child: Text(name!,style: TextStyle(
        color: textcolor,
        fontFamily: bold,
       
      ),),
      );
}
