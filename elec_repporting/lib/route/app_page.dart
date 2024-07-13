import 'package:elec_repporting/route/app_route.dart';
import 'package:elec_repporting/screen/login.dart';
import 'package:get/get.dart';

class AppPage {
  static final page = [
    GetPage(
      name: AppRoute.login,
      page: () => const Login(),
    )
  ];
}
