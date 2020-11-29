import 'package:andgarivara/General/view/splashScreen.dart';
import 'package:andgarivara/Utils/controller/SizeConfigController.dart';
import 'package:andgarivara/braintree_payment.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(InitiateApp());
}

class InitiateApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Get.put(GetSizeConfig());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Montserrat-Regular'
      ),
      home: SplashScreen(),
    );
  }
}