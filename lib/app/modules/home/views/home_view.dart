import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:n_transport/app/modules/home/controllers/home_controller.dart';
import 'package:n_transport/app/modules/setting/views/setting_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // return GetBuilder<HomeController>(
    //     builder: (controller) => Scaffold(
    //       appBar: AppBar(
    //         title: const Text('Home Page'),
    //       ),
    //       body: Center(
    //         child: Column(
    //           children: [
    //             Text(controller.count.toString()),
    //             const SizedBox(height: 40,),
    //             ElevatedButton(onPressed: () => controller.increment(), child: const Text('GO'))
    //           ],
    //         ),
    //       ),
    //     )
    // );
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Obx(() {
              return Column(
                children: [
                  Text('Count: ${controller.count.value.toString()}'),
                  ElevatedButton(onPressed: () => controller.increment(), child: const Text('Go 1')),
                ],
              );
            }),
            Obx(() {
              return ElevatedButton(onPressed: () => controller.increment(), child: Text('Go 2 ${controller.count.value}'));
            }),
            ElevatedButton(onPressed: () => controller.increment(), child: const Text('Go 3')),
            ElevatedButton(onPressed: () => Get.to(SettingView()), child: Text('Setting page'))
          ],
        ),),
      );
  }
}