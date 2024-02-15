import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class SubCategorySelectScreen extends StatelessWidget {
  const SubCategorySelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SafeArea(
        child: Center(
          child: ElevatedButton(onPressed: ()=> context.push('/resultList'), child: const Text('サブカテゴリ選んでるなう。結果のリスト表示に進む。'),
          ),
        ),
      ),
    );
  }
}
