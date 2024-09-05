import 'package:get/get.dart';

import 'package:balancer_management_system/app/modules/home/bindings/home_binding.dart';
import 'package:balancer_management_system/app/modules/home/views/home_view.dart';
import 'package:balancer_management_system/app/modules/userprofile/bindings/userprofile_binding.dart';
import 'package:balancer_management_system/app/modules/userprofile/views/userprofile_view.dart';
import 'package:balancer_management_system/app/modules/wallet/bindings/wallet_binding.dart';
import 'package:balancer_management_system/app/modules/wallet/views/wallet_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.USERPROFILE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.USERPROFILE,
      page: () => UserprofileView(),
      binding: UserprofileBinding(),
    ),
    GetPage(
      name: _Paths.WALLET,
      page: () => WalletView(),
      binding: WalletBinding(),
    ),
  ];
}
