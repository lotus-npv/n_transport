import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:n_transport/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Future<void> _handleSignIn(BuildContext context) async {
    try {
      GoogleSignInAccount? account = await GoogleSignIn().signIn();

      if (account != null) {
        // Đăng nhập thành công, bạn có thể lấy thông tin của người dùng như email, tên, hình ảnh, ...
        print('Đăng nhập thành công: ${account.displayName}');
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(account: account,)));
      } else {
        print('Đăng nhập bị hủy bỏ.');
      }
    } catch (error) {
      print('Đăng nhập không thành công: $error');
    }
  }

  Future<void> _handleSignOut() async {
    await GoogleSignIn().signOut();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username'),
            TextField(),
            Text('Password'),
            TextField(),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Login')),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () async {
                      await _handleSignIn(context);
                    },
                    child: Text("Sign in with Google"))
              ],
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: _handleSignOut, child: Text('Sign Out'))
          ],
        ),
      ),
    );
  }
}
