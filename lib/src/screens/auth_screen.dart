import 'package:app_develop/user_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

final authScreenSwitchProvide = StateProvider<bool>((ref) => true);

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  ConsumerState<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {

  @override
  Widget build(BuildContext context) {
    final userController = ref.read(userProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('images/appIcon.png'),
            ), //TODO 画質高すぎるので変更
            ElevatedButton(
                onPressed: () => userController.logIn(),
                child: const Text('ログイン完了')),
            ElevatedButton(
                onPressed: () {
                  signInWithGoogle();
                  setState(() {

                  });
                },
                child: const Text('Googleで認証する')),
          ],
        ),
      ),
    );
  }
}

Future<dynamic> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
    await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  } on Exception catch (e) {
    // TODO
    if (kDebugMode) {
      print('exception->$e');
    }
  }
}
