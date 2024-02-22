import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:n_transport/app/modules/home/bindings/home_binding.dart';
import 'package:n_transport/app/modules/setting/bindings/setting_binding.dart';
import 'package:n_transport/app/modules/setting/views/setting_view.dart';
import 'package:n_transport/app/routes/app_routes.dart';
import 'package:n_transport/pages/home_page.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.home, page: () => const HomePage(), binding: HomeBinding()),
    GetPage(name: AppRoutes.setting, page: () => SettingView(), binding: SettingBinding())
  ];
}