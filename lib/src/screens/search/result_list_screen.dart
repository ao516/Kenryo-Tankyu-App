import 'package:app_develop/src/components/result_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultListScreen extends StatelessWidget {
  final String resultWord;
  const ResultListScreen({Key? key, required this.resultWord}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
        onPopInvoked: (didPop) async => context.go('/'), //TODO homeじゃだめ、使っていたボトムナビゲーションに戻りたい。
      child: Scaffold(
        appBar: ResultHeader(searchWord: resultWord),
        body:  SafeArea(
          child: Center(
            child: ElevatedButton(onPressed: ()=> context.push('/result'), child: const Text('結果リストなう。結果表示に進む。'),

            ),
          ),
        ),
      ),
    );
  }
}
