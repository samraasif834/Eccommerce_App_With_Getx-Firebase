import 'package:ecommerceappfirebase/views/splash_screen.dart/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'constants/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     title: appname,
     theme: ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
      ),
      fontFamily: regular,
     ),
      home: const SplashScreen(),
    );
  }
}

