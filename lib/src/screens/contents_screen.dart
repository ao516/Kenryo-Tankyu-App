import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContentsScreen extends StatelessWidget {
  const ContentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: ()=>context.push('result'), child: const Text('作品情報を見る')),
      ),
    );
  }
}
