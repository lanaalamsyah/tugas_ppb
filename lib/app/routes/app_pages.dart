import 'package:get/get.dart';

import 'package:absensi/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:absensi/app/modules/dashboard/views/dashboard_view.dart';
import 'package:absensi/app/modules/home/bindings/home_binding.dart';
import 'package:absensi/app/modules/home/views/home_view.dart';
import 'package:absensi/app/modules/izin/bindings/izin_binding.dart';
import 'package:absensi/app/modules/izin/views/izin_view.dart';
import 'package:absensi/app/modules/kehadiran/bindings/kehadiran_binding.dart';
import 'package:absensi/app/modules/kehadiran/views/kehadiran_view.dart';
import 'package:absensi/app/modules/login/bindings/login_binding.dart';
import 'package:absensi/app/modules/login/views/login_view.dart';
import 'package:absensi/app/modules/profile/bindings/profile_binding.dart';
import 'package:absensi/app/modules/profile/views/profile_view.dart';
import 'package:absensi/app/modules/sakit/bindings/sakit_binding.dart';
import 'package:absensi/app/modules/sakit/views/sakit_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.KEHADIRAN,
      page: () => KehadiranView(),
      binding: KehadiranBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.IZIN,
      page: () => IzinView(),
      binding: IzinBinding(),
    ),
    GetPage(
      name: _Paths.SAKIT,
      page: () => SakitView(),
      binding: SakitBinding(),
    ),
  ];
}
