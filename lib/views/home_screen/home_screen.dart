import 'package:ecommerceappfirebase/constants/consts.dart';
import 'package:ecommerceappfirebase/constants/lists.dart';

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
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                // hintText: search,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchanything,
              ),
            ),
          ),
          ListView.builder(
            itemCount: brandsList.length,
            itemBuilder: (context, i) {
              return Container(
                child: Image.asset(brandsList[i],
                fit: BoxFit.fitWidth,
                ),
              );
            },
          )
        ],
      )),
    );
  }
}
