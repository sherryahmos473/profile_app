import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile/modules/profile/bindings/profile_binding.dart';
import 'package:profile/modules/profile/views/profile.dart';
import 'package:profile/routes/app_routers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Profile(),
      initialBinding: ProfileBinding(),
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
    );
  }
}
