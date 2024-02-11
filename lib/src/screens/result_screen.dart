import 'package:app_develop/src/components/footer.dart';
import 'package:app_develop/src/components/result_header.dart';
import 'package:flutter/material.dart';
import '../screen_control_bloc.dart';

class ResultScreen extends StatefulWidget {
  final String resultWord;
  const ResultScreen({Key? key, required this.resultWord}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late ViewCtrlBloc viewCtrl;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async =>
          Navigator.of(context).popUntil((route) => route.isFirst),
      child: Scaffold(
        appBar: ResultHeader(searchWord: widget.resultWord),
        body: const Text('結果表示画面'),
        bottomNavigationBar: Footer(viewCtrl: viewCtrl.viewSink),
      ),
    );
  }

  @override
  void initState() {
    viewCtrl = ViewCtrlBloc();
    super.initState();
  }

  @override
  void dispose() {
    viewCtrl.dispose();
    super.dispose();
  }
}
