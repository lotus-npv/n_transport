import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:n_transport/pages/login_page.dart';

import '../pages/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Hiển thị màn hình chờ nếu dữ liệu đang tải.
            return const CircularProgressIndicator();
          } else if (snapshot.hasData) {
            // Người dùng đã đăng nhập, hiển thị trang chính.
            return  const HomePage();
          } else if (snapshot.hasError) {
            // Xảy ra lỗi trong quá trình xác thực, hiển thị thông báo lỗi.
            return Text('Đã xảy ra lỗi: ${snapshot.error}');
          } else {
            print('auth: false');
            // Người dùng chưa đăng nhập, hiển thị trang đăng nhập hoặc đăng ký.
            return LoginPage();
          }
        },
      ),
    );
  }
}