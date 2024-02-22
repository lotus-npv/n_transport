import 'package:get/get.dart';
import 'package:n_transport/app/modules/setting/controllers/setting_controller.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    return Get.lazyPut<SettingController>(() => SettingController());
  }
}