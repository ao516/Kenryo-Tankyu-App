import 'package:app_develop/src/components/footer.dart';
import 'package:app_develop/src/components/header.dart';
import 'package:app_develop/src/screen_control.dart';
import 'package:app_develop/src/screen_control_bloc.dart';
import 'package:flutter/material.dart';


class ScreenManageWidget extends StatefulWidget {
  const ScreenManageWidget({super.key});

  @override
  State<ScreenManageWidget> createState() => _ScreenManageWidgetState();
}

class _ScreenManageWidgetState extends State<ScreenManageWidget> {
  late ViewCtrlBloc viewCtrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body:  Screen(viewCtrl: viewCtrl.viewStream),
      bottomNavigationBar: Footer(viewCtrl: viewCtrl.viewSink),
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
