import 'package:elec_repporting/route/app_page.dart';
import 'package:elec_repporting/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primaryColor: const Color(0xFF5669FF),
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoute.login,
        getPages: AppPage.page,
    );
  }
}