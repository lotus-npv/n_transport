import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:n_transport/app/modules/home/controllers/home_controller.dart';
import 'package:n_transport/app/modules/setting/controllers/setting_controller.dart';

class SettingView extends StatelessWidget {
  SettingView({super.key});
  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('setting page'),
            Obx(() {
              return Text('Count: ${_homeController.count.value}');
            }),
            Obx(() {
              return Text('Count: ${_homeController.count.value}');
            }),
            Text('Count no Obx: ${_homeController.count.value}'),
            ElevatedButton(onPressed: () => _homeController.increment(), child: const Text('Increment')),
            ElevatedButton(onPressed: () {
              Get.snackbar(
                "Hey i'm a Get SnackBar!", // title
                "It's unbelievable! I'm using SnackBar without context!", // message
                icon: const Icon(Icons.alarm),
                shouldIconPulse: true,
                isDismissible: true,
                duration: const Duration(seconds: 3),
              );
            }, child: const Text('Show snack bar')),
            ElevatedButton(onPressed: () => Get.back(), child: const Text('Back'))
          ],
        ),
      ),
    );
  }

}