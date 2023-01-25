import 'package:ecommerceappfirebase/constants/consts.dart';

Widget customTextField({String? title, String? hintText,controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
         Text(
      title!,
          style: const TextStyle(
            color: redColor,
            fontFamily: semibold,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: controller
          ,
            decoration:  InputDecoration(
                hintText: hintText!,
                hintStyle: TextStyle(
                  fontFamily: semibold,
                  color: textfieldGrey
                ),
                isDense: true,
                fillColor: lightGrey,
                filled: true,
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: redColor,
                  ),
                ))),
                SizedBox(height: 5,)
                
      ]);
}
