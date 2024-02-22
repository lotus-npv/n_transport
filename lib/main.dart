import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:n_transport/app/modules/home/bindings/home_binding.dart';
import 'package:n_transport/app/modules/home/views/home_view.dart';
import 'package:n_transport/app/routes/app_pages.dart';
import 'package:n_transport/auth/auth_page.dart';
import 'package:n_transport/pages/home_page.dart';
import 'package:n_transport/pages/login_page.dart';

import 'app/modules/setting/views/setting_view.dart';
import 'components/loading_overlay.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'N-Transport',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: HomeBinding(),
      home: const HomeView(),
      getPages: AppPages.pages,
    );
  }
}


