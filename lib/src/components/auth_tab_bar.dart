// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';
//
// class AuthScreen extends ConsumerStatefulWidget {
//   const AuthScreen({super.key});
//
//   @override
//   ConsumerState<AuthScreen> createState() => _AuthScreenState();
// }
//
// class _AuthScreenState extends ConsumerState<AuthScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 1,
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           bottom: const TabBar(tabs: <Widget>[
//             Tab(text: '新規登録'),
//             Tab(text: 'ログイン'),
//           ]),
//         ),
//         body: Column(
//           children: [
//             ListView(
//               padding: const EdgeInsets.all(10),
//               children: [
//                 SizedBox(
//                   width: 200,
//                   height: 200,
//                   child: Image.asset('images/appIcon.png'),
//                 ), //TODO 画質高すぎるので変更
//                 ElevatedButton(
//                     onPressed: () => context.go('/home'),
//                     child: const Text('ログイン完了')),
//               ],
//             ),
//             const TabBarView(
//               children: <Widget>[
//                 Center(child: Text("新規作成画面")),
//                 Center(child: Text("ログイン画面")),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


///途中から書き直した部分
//
// class _AuthScreenState extends ConsumerState<AuthScreen> {
//   var idController = TextEditingController();
//
//   var passController = TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     final screen = ref.watch(authScreenSwitchProvide);
//
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(
//               width: 200,
//               height: 200,
//               child: Image.asset('images/appIcon.png'),
//             ), //TODO 画質高すぎるので変更
//             ElevatedButton(
//                 onPressed: () => context.go('/home'),
//                 child: const Text('ログイン完了')),
//             Row(
//               children: [
//                 ElevatedButton(onPressed: (){
//                   ref.watch(authScreenSwitchProvide.notifier).state = true;
//                 }, child: const Text('新規作成')), //TODO
//                 ElevatedButton(onPressed: (){
//                   ref.watch(authScreenSwitchProvide.notifier).state = false;
//                 }, child: const Text('ログイン')), //TODO
//               ],
//             ),
//             screen ? _signUp() : _signIn()
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _signUp() {
//     return Column(
//       children: <Widget>[
//         /// メールアドレス入力
//         TextField(
//           decoration: const InputDecoration(
//             label: Text('E-mail'),
//             icon: Icon(Icons.mail),
//           ),
//           controller: idController,
//         ),
//
//         /// パスワード入力
//         TextField(
//           decoration: const InputDecoration(
//             label: Text('Password'),
//             icon: Icon(Icons.key),
//           ),
//           controller: passController,
//           obscureText: true,
//         ),
//       ],
//     );
//   }
//
//   Widget _signIn() {
//     return const Text('ログイン');
//   }
// }
