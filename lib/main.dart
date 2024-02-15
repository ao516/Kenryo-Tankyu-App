import 'package:app_develop/src/router.dart';
import 'package:app_develop/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'firebase_options.dart';



//todo クラッシュハンドラ設定
//参考URL https://zenn.dev/snova301/books/6df29a230d681f/viewer/06a9ce のgithubみよーう
//iOSとandroidの端末確認とかももし必要だったら。
void main() async{
  runApp(const ProviderScope(child: MyApp()));
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends ConsumerWidget  {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {

    ///ログイン状態であるかを監視
    final router = ref.watch(routerProvider);
    ref.listen(userProvider.select((s) => s.isLoggedIn), (_, __) {
      router.refresh();
    });

    return MaterialApp.router(
      routerConfig: router,

      debugShowCheckedModeBanner: false,
      title: 'TankyuApp',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}
