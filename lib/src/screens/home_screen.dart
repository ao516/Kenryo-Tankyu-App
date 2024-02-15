import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../user_controller.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userController = ref.read(userProvider.notifier);
    return Scaffold(
      body:  SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: ()=> context.push('/home/contents'), child: const Text('コンテンツ画面に移動')
                      ),
              ElevatedButton(onPressed: ()=> userController.logOut(), child: const Text('ログアウト')
              ),

            ],
          ),
      ),
      ),
    );
  }
}
