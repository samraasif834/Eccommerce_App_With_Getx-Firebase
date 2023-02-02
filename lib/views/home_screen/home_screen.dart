import 'package:ecommerceappfirebase/constants/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      height: height,
      width: width,
      child: SafeArea(child: Column(
        children: [
          Container(
            color: lightGrey,
            child: TextFormField(
              decoration:InputDecoration(
                // hintText: search,
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          )
        ],
      )),

    );
  }
}